class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.joins(:note)
  end
end
