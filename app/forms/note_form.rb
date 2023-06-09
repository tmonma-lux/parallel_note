# frozen_string_literal: true

class NoteForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :title, :string
  attribute :text_en, :string
  attribute :text_ja, :string
  attribute :free_text, :string
  attribute :phrases, default: []
  attribute :tag_list

  with_options presence: true do
    validates :title
    validates :text_en
  end
  validate :validate_phrases

  def initialize(note = Note.new, **attributes)
    @note = note

    if attributes.empty?
      attributes = { title: note.title, text_en: note.text_en, text_ja: note.text_ja,
                     free_text: note.free_text, phrases: note.phrases, tag_list: note.tag_list.join(',') }
    else
      attributes['phrases'].map!(&:symbolize_keys)
    end

    super attributes
  end

  def save
    return false if invalid?

    ActiveRecord::Base.transaction do
      @note.update!(title:, text_en:, text_ja:, free_text:, tag_list: tag_list.split(','))
      # すでに登録されている語句を削除
      @note.phrases.map(&:destroy!)
      # 語句とその意味がともに空欄のデータを削除
      delete_blank_phrases
      # 語句が存在している場合は登録
      insert_new_phrases
    end
    # 戻り値をif結果のfalseからtrueに変更
    true
  rescue ActiveRecord::RecordInvalid
    false
  end

  private

  def delete_blank_phrases
    phrases.delete_if { |phrase_attrs| phrase_attrs[:expression_en].blank? && phrase_attrs[:expression_ja].blank? }
  end

  def insert_new_phrases
    return if phrases.empty?

    phrases.map { |phrase_attrs| phrase_attrs.store(:note_id, @note.id) }
    Phrase.insert_all! phrases
  end

  def validate_phrases
    phrases.each do |phrase_attrs|
      if phrase_attrs[:expression_en].present? && phrase_attrs[:expression_ja].blank?
        add_invalid_phrase_error(:expression_en, :expression_ja)
      elsif phrase_attrs[:expression_en].blank? && phrase_attrs[:expression_ja].present?
        add_invalid_phrase_error(:expression_ja, :expression_en)
      end
    end
  end

  def add_invalid_phrase_error(attr1, attr2)
    errors.add(:base, "#{NoteForm.human_attribute_name(attr1)}に対応する" \
                      "#{NoteForm.human_attribute_name(attr2)}を入力してください")
  end
end
