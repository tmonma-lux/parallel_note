# frozen_string_literal: true

class Note < ApplicationRecord
  acts_as_taggable_on :tags

  has_many :phrases, dependent: :destroy

  def self.search(keyword)
    where('title like?', "%#{keyword}%") | tagged_with(keyword)
  end
end
