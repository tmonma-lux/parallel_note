class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.eager_load(:note).select('phrases.*, notes.title')
  end
end
