class QuizzesController < ApplicationController
  def show
    @phrases = Phrase.order("RAND()").limit(4).preload(:note)
  end
end
