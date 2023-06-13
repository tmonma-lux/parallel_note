# frozen_string_literal: true

class TagsController < ApplicationController
  def index
    @tags = Note.tag_counts_on(:tags).page(params[:page])
  end

  def destroy
    tag = Note.tag_counts_on(:tags).find(params[:id])
    tag.destroy

    redirect_to tags_url, notice: 'タグの削除が完了しました。', status: :see_other
  end

  def search
    redirect_to tags_url if params[:query].empty?
    @tags = Note.tag_counts_on(:tags).where('name LIKE :search_word', search_word: "%#{params[:query]}%")
                .page(params[:page])
    @query = params[:query]
  end
end
