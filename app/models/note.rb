# frozen_string_literal: true

class Note < ApplicationRecord
  acts_as_taggable_on :tags

  has_many :phrases, dependent: :destroy

  def self.get_filtered_records(search_word, tags)
    if tags.present?
      if search_word.empty?
        tagged_with(tags, any: true)
      else
        where('title LIKE :search_word', search_word: "%#{search_word}%").tagged_with(tags, any: true)
      end
    else
      where('title LIKE :search_word', search_word: "%#{search_word}%")
    end
  end
end
