# frozen_string_literal: true

class Note < ApplicationRecord
  acts_as_taggable_on :tags

  has_many :phrases, dependent: :destroy

  def self.search(query, tags)
    if tags.present?
      if query == ''
        Note.tagged_with(tags, any: true)
      else
        where('title like?', "%#{query}%").tagged_with(tags, any: true)
      end
    else
      where('title like?', "%#{query}%")
    end
  end
end
