class CreateBagmons < ActiveRecord::Migration[5.2]
  def change
    create_table :bagmons do |t|
      t.string :name
      t.string :number
      t.string :image
      t.integer :first_type_id, :null => false
      t.integer :second_type_id, :null => true
      t.integer :third_type_id, :null => true

      t.timestamps
    end
  end
end
