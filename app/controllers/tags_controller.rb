class TagsController < ApplicationController
  def index
    @tags = Note.tag_counts_on(:tags)
  end
end
