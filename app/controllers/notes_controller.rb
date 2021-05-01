class NotesController < ApplicationController

    def index 
        notes = Note.all
        render json: NoteSerializer.new(notes)
    end

    def create
        note = Note.create(note_params)
    end

    def new 
        note = Note.create(note_params) 
    end

    def show 
        note = Note.find_by(id: params[:id])
        options = {
            include: [:user]
        }
        render json: NoteSerializer.new(note, options)
    end

    def destroy 
        @note = Note.find(id: params[:id]).delete
        render json: @note
    end


    private

    def note_params
        params.require(note).permit(:title, :content, :user_id)
    end
end
