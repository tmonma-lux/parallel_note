# frozen_string_literal: true

class QuizzesController < ApplicationController
  def show
    @phrases = Phrase.order('RAND()').limit(4).preload(:note)
    @question_language = params[:question_language] || 'en'
  end
end
