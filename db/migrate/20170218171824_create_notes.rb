class CreateNotes < ActiveRecord::Migration[5.0]
  def change
  	create_table :types do |t|
  		t.name :name
      t.id :id
  		t.timestamps
  	end

    create_table :notes do |t|
    	t.belongs_to :type, index: true
      t.string :title
      t.id :id
      t.text :text

      t.timestamps
    end
  end
end
