# frozen_string_literal: true

class NoteForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :title, :string
  attribute :text_en, :string
  attribute :text_ja, :string
  attribute :free_text, :string
  attribute :phrases, default: {}
  attribute :tag_list

  validates :title, presence: true
  validates :text_en, presence: true
  validate :validate_phrases

  def initialize(note = Note.new, **params)
    @note = note
    # Noteモデル配下のPhraseデータをハッシュ配列に変換
    phrase_params = note.phrases.map { |phrase|
                    { expression_en: phrase.expression_en, expression_ja: phrase.expression_ja } }
    
    if params.empty?
      params = { title: note.title, text_en: note.text_en, text_ja: note.text_ja,
                 free_text: note.free_text, phrases: phrase_params,
                 tag_list: note.tag_list.join(',')}
    else
      params['phrases'].map!(&:symbolize_keys)
    end

    super params
  end

  def save
    return false if invalid?

    ActiveRecord::Base.transaction do
      @note.update!(title:, text_en:, text_ja:, free_text:, tag_list: tag_list.split(','))
      # すでに登録されている語句を削除
      @note.phrases.map(&:destroy!)
      # 語句とその意味がともに空欄のデータを削除
      phrases.delete_if { |phrase_attrs| phrase_attrs[:expression_en].blank? && phrase_attrs[:expression_ja].blank? }
      # 語句が存在している場合は登録
      if phrases.present?
        phrases.map { |phrase_attrs| phrase_attrs.store(:note_id, @note.id) }
        Phrase.insert_all! phrases
      end
    end
    # 戻り値をif結果のfalseからtrueに変更
    true
  rescue ActiveRecord::RecordInvalid
    false
  end

  private

  def validate_phrases
    phrases.each do |phrase_attrs|
      if phrase_attrs[:expression_en].present? && phrase_attrs[:expression_ja].blank?
        errors.add(:base,
                   "#{NoteForm.human_attribute_name(:expression_en)}に対応する#{NoteForm.human_attribute_name(:expression_ja)}を入力してください")
      elsif phrase_attrs[:expression_en].blank? && phrase_attrs[:expression_ja].present?
        errors.add(:base,
                   "#{NoteForm.human_attribute_name(:expression_ja)}に対応する#{NoteForm.human_attribute_name(:expression_en)}を入力してください")
      end
    end
  end
end
