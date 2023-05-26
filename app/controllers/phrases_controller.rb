# frozen_string_literal: true

class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.eager_load(:note)
  end
end
