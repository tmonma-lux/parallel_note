# frozen_string_literal: true

class Phrase < ApplicationRecord
  belongs_to :note

  def self.search(query)
    where('expression_en like? OR expression_ja like?', "%#{query}%", "%#{query}%")
  end
end
