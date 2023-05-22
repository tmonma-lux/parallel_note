class Note < ApplicationRecord
  validates :title, presence: true

  has_many :phrases, dependent: :destroy
end
