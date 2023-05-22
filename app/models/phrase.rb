class Phrase < ApplicationRecord
  validates :expression_en, presence: true
  validates :expression_ja, presence: true

  belongs_to :note
end
