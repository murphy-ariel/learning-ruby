class Type < ApplicationRecord
	has_many :notes

	def notes
  	Note.all
  end
  def note
  	Note.new
 	end
end
