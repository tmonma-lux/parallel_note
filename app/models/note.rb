# frozen_string_literal: true

class Note < ApplicationRecord
  acts_as_taggable_on :tags

  has_many :phrases, dependent: :destroy
end
