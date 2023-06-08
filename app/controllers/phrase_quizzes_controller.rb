# frozen_string_literal: true

class PhraseQuizzesController < ApplicationController
  def index
    @phrases = Phrase.order('RAND()').limit(4).eager_load(:note)
    @question_language = params[:question_language] || 'en'
  end
end
