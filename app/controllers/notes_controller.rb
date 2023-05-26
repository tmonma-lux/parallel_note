# frozen_string_literal: true

class NotesController < ApplicationController
  def index
    @notes = Note.all.includes(:tags)
  end

  def new
    @note_form = NoteForm.new
  end

  def create
    @note_form = NoteForm.new(note_form_params)

    if @note_form.save
      redirect_to notes_url, notice: 'メモの保存が完了しました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def note_form_params
    params.require(:note_form).permit(:title, :text_en, :text_ja, :free_text, :tag_list,
                                      phrases: %i[expression_en expression_ja])
  end
end
