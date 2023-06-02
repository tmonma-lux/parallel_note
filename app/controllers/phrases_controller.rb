# frozen_string_literal: true

class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.preload(:note)
  end

  def search
    redirect_to phrases_url if params[:query].empty?
    @phrases = Phrase.search(params[:query]).preload(:note)
    @query = params[:query]
  end
end
