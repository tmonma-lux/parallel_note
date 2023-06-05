# frozen_string_literal: true

class NotesController < ApplicationController
  def index
    @notes = Note.preload(:tags).page(params[:page]).per(8)
  end

  def show
    @note = Note.find(params[:id])
  end

  def search
    redirect_to notes_url if params[:query].empty? && params[:tags].nil?
    @notes = Note.search(params[:query], params[:tags])
    @query = params[:query]
  end

  def new
    @note_form = NoteForm.new
  end

  def create
    @note_form = NoteForm.new(**note_form_params)

    if @note_form.save
      redirect_to notes_url, notice: 'メモの保存が完了しました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @note = Note.find(params[:id])
    @note_form = NoteForm.new(@note)
  end

  def update
    @note = Note.find(params[:id])
    @note_form = NoteForm.new(@note, **note_form_params)

    if @note_form.save
      redirect_to notes_url, notice: 'メモの更新が完了しました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    redirect_to notes_url, notice: 'メモを削除しました。', status: :see_other
  end

  private

  def note_form_params
    params.require(:note_form).permit(:title, :text_en, :text_ja, :free_text, :tag_list,
                                      phrases: %i[expression_en expression_ja])
  end
end
