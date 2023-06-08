# frozen_string_literal: true

class Phrase < ApplicationRecord
  belongs_to :note

  def self.get_filtered_records(search_word)
    where('expression_en LIKE :search_word OR expression_ja LIKE :search_word', search_word: "%#{search_word}%")
  end
end
