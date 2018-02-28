class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
      t.string :make
      t.string :model
      t.string :color
      t.float :price

      t.timestamps
    end
  end
end
