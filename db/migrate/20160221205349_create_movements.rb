class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.string :type, null: false
      t.float :amount, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
