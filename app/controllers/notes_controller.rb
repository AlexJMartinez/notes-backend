class NotesController < ApplicationController

    def index 
        notes = Notes.all
        render json: notes
    end

    def create
        note = Note.new(note_params)
    end

    def new 
        note = Note.new(note_params)
    end

    def show 
        note = Note.find(params[:id])
        render json: note
    end

    def destroy 
        note = Note.find(params[:id])
        note.delete
        redirect_to 
    end


    private

    def note_params
        params.require(note).permit(:title, :content, :user_id)
    end
end
