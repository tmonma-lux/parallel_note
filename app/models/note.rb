class Note < ApplicationRecord
  acts_as_taggable_on :tags

  validates :title, presence: true

  has_many :phrases, dependent: :destroy
end
