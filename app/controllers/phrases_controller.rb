# frozen_string_literal: true

class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.preload(:note).page(params[:page])
  end

  def search
    redirect_to phrases_url if params[:query].empty?
    @phrases = Phrase.search(params[:query]).preload(:note).page(params[:page])
    @query = params[:query]
  end
end
