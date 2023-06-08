# frozen_string_literal: true

class Note < ApplicationRecord
  acts_as_taggable_on :tags

  has_many :phrases, dependent: :destroy

  def self.get_filtered_records(search_word, tags)
    query = self.all
    query = query.where('title LIKE :search_word', search_word: "%#{search_word}%") if search_word.present?
    query = query.tagged_with(tags, any: true) if tags.present?
    query
  end
end
