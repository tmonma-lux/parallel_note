class NoteForm
  include ActiveModel::Model
  include ActiveModel::Attributes
  include ActiveModel::Validations

  attribute :title, :string
  attribute :text_en, :string
  attribute :text_ja, :string
  attribute :free_text, :string
  attribute :expression_en, :string
  attribute :expression_ja, :string
  attribute :tag_list

  with_options presence: true do
    validates :title
    validates :expression_en
    validates :expression_ja
  end

  def save
    return false if invalid?

    ActiveRecord::Base.transaction do
      note = Note.create(title:, text_en:, text_ja:, free_text:)
      note.tag_list.add tag_list.split(',')
      note.save
      Phrase.create(expression_en:, expression_ja:, note:)
    end
  end
end
