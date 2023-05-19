class Note < ApplicationRecord
  validates :title, presence: true

  has_many :phrases
end
