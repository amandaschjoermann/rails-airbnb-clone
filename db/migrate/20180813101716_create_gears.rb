class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
      t.string :category
      t.integer :price
      t.text :description
      t.string :name
      t.integer :rating
      t.boolean :available

      t.timestamps
    end
  end
end
