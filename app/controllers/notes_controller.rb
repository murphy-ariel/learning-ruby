class NotesController < ApplicationController

	def index
    @notes=Note.all
  end

	def show
    @note = Note.find(params[:note_id])
  end

	def new
		@note = Note.new(params[:note])
  end

  def edit
  	@note = Note.find(params[:note_id])
	end

  def create
  	@note = Note.new(note_params)
 		@note.save
 		redirect_to type_notes_path(Type.find(params[:type_id]))
	end

	def update
  	@note = Note.find(params[:note_id])
 	
  	if @note.update(note_params)
	    redirect_to @note
	  else
    	render 'edit'
  	end
	end

	def destroy
  	@note = Note.find(params[:note_id])
  	@note.destroy
	 
	  redirect_to types_path
	end

	private

	def note_params
		params.require(:note).permit(:title, :text, :note_id, :type_id)
	end


end
