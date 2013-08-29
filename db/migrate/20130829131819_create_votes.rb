class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :order_id, references: [:Order, :id]
      t.integer :meal_id, references: [:Meal, :id]
      t.integer :user_id, references: [:User, :id]
      
      t.timestamps
    end
    add_index :votes, :order_id
    add_index :votes, :meal_id
    add_index :votes, :user_id
  end
end
