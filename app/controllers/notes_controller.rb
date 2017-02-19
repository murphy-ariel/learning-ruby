class NotesController < ApplicationController

	def index
    @notes=Note.all
  end

	def show
    @note = Note.find(params[:note_id])
  end

	def new
		@note=Note.new
  end

  def edit
  	@note = Note.find(params[:note_id])
	end

  def create
  	@type=Type.find(params[:type_id])
 		@note = @type.notes.create(note_params)
 		redirect_to type_path(@type)
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
		params.require(:note).permit(:title, :text)
	end


end
