class QuizzesController < ApplicationController
  def show
    @phrases = Phrase.order("RAND()").limit(5)
  end
end
