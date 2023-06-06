class QuizzesController < ApplicationController
  def show
    @phrases = Phrase.order("RAND()").limit(4).preload(:note)
    @q_lang = params[:q_lang] || 'en'
  end
end
