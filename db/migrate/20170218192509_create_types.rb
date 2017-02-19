class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.string :name
      t.id :id

      t.timestamps
    end

    create_table :notes do |t|
    	t.belongs_to :type, index: true
      t.id :id
    	t.timestamps
    end
    
  end
end
