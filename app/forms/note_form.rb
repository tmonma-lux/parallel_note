class NoteForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :title, :string
  attribute :text_en, :string
  attribute :text_ja, :string
  attribute :free_text, :string
  attribute :phrases
  attribute :tag_list

  validates :title, presence: true
  validate :validate_phrases

  def save
    return false if invalid?

    ActiveRecord::Base.transaction do
      # メモを作成
      note = Note.new(title:, text_en:, text_ja:, free_text:)
      # Tagを登録
      note.tag_list.add tag_list.split(',')
      note.save!
      # 語句を登録
      phrases.values.each do |phrase_attrs|
        note.phrases.create!(phrase_attrs)
      end
    end
  rescue ActiveRecord::RecordInvalid
    false
  end

  private

  def validate_phrases
    phrases.values.each do |phrase_attrs|
      if phrase_attrs[:expression_en].present? && phrase_attrs[:expression_ja].blank?
        errors.add(:base, "#{Phrase.human_attribute_name(:expression_en)}に対応する#{Phrase.human_attribute_name(:expression_ja)}を入力してください。")
      elsif phrase_attrs[:expression_en].blank? && phrase_attrs[:expression_ja].present?
        errors.add(:base, "#{Phrase.human_attribute_name(:expression_ja)}に対応する#{Phrase.human_attribute_name(:expression_en)}を入力してください。")
      end
    end
  end
end

