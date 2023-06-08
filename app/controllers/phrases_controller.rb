# frozen_string_literal: true

class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.eager_load(:note).page(params[:page])
  end

  def search
    redirect_to phrases_url if params[:query].empty?
    @phrases = Phrase.get_filtered_records(params[:query]).eager_load(:note).page(params[:page])
    @query = params[:query]
  end
end
