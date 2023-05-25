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
  end
end
