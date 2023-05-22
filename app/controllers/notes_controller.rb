# frozen_string_literal: true

class NotesController < ApplicationController
  def index
    @notes = Note.all
  end
end
