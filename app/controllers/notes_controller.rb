class NotesController < ApplicationController

	def index
		@type=Type.find(params[:type_id])
		#binding.pry
  end

	def show
    @note = Note.find(params[:id])
  end

	def new
		@note = Note.new(params[:note])
  end

  def edit
  	@note = Note.find(params[:id])
  	#binding.pry
	end

  def create
  	@note = Note.new(note_params)
  	@note.type_id = params[:type_id]
 		@note.save
 		redirect_to type_notes_path(Type.find(params[:type_id]))
	end

	def update
  	@note = Note.find(params[:id])	
  	#binding.pry
  	@note.update(note_params)
  	redirect_to type_notes_path(Type.find(@note.type_id))
	end

	def destroy
  	@note = Note.find(params[:id])
  	temp=Type.find(@note.type_id)
  	@note.delete
	  redirect_to root_path
	end

	private

	def note_params
		params.require(:note).permit(:title, :text, :note_id, :type_id)
	end


end
