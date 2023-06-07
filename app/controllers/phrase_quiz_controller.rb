# frozen_string_literal: true

class PhraseQuizController < ApplicationController
  def index
    @phrases = Phrase.order('RAND()').limit(4).preload(:note)
    @question_language = params[:question_language] || 'en'
  end
end
