class AddTypeIdToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :type_id, :integer
  end
end
