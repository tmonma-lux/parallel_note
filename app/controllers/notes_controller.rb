# frozen_string_literal: true

class NotesController < ApplicationController
  def index
    @notes = Note.preload(:tags)
  end

  def show
    @note = Note.find(params[:id])
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

  def edit
    @note = Note.find(params[:id])
    @note_form = NoteForm.new(title: @note.title, text_en: @note.text_en, text_ja: @note.text_ja, 
                              free_text: @note.free_text, phrases: @note.phrases,
                              tag_list: @note.tag_list.join(','))
  end

  def update
    @note = Note.find(params[:id])
    @note_form = NoteForm.new(note_form_params)

    if @note_form.update(@note)
      redirect_to notes_url, notice: 'メモの更新が完了しました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def note_form_params
    params.require(:note_form).permit(:title, :text_en, :text_ja, :free_text, :tag_list,
                                      phrases: %i[expression_en expression_ja])
  end
end
