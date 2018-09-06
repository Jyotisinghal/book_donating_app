class AddIndexToBooksWriter < ActiveRecord::Migration[5.1]
  def change
  	add_index :books, :writer
  end
end
