# frozen_string_literal: true

class Phrase < ApplicationRecord
  belongs_to :note

  def self.get_filtered_records(search_word)
    where('expression_en like? OR expression_ja like?', "%#{search_word}%", "%#{search_word}%")
  end
end
