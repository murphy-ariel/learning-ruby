class Note < ApplicationRecord
	belongs_to :type

	validates :title, presence: true #, 
										#format: { without: /\A[a-zA-Z]+\z/,
    								#message: "Must Have No Letters - 
    								#Enter the Due Date" }


end
