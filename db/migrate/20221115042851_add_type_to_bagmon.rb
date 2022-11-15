class AddTypeToBagmon < ActiveRecord::Migration[5.2]
  def change
    add_reference :bagmons, :state, foreign_key: true
  end
end
