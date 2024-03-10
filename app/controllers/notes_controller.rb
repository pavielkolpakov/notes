class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: notes, root: true
    end

    def create
        note = Note.create(title: note_params["title"], content: note_params["content"])
        if note.valid?
            render json: {"Success": "Note was succesfully created"}, root: true
        else
            render json: {"Error": "Something went wrong"}, root: true
        end
    end

    def search
        note = Note.where(note_params)
        if note.present?
            render json: note, root: true
        else
            render json: {"Error": "Note not found"}, root: true
        end
    end

    def destroy
        note = Note.find(params[:id])
        if note.destroy
            render json: {"Destroyed": "Note deleted"}, root: true
        else
            render json: {"Error": "Note doesn't exist"}, root: true
        end
    end

    def update
        note = Note.find(params[:id])
        if note.update(note_params)
            render json: {"Updated": "Note updated"}, root: true
        else
            render json: {"Error": "Note doesn't exist"}, root: true
        end
    end

    private

    def note_params
        params.require(:note).permit(
            :title,
            :content
        )
    end
end
