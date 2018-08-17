class CreateGearPics < ActiveRecord::Migration[5.2]
  def change
    create_table :gear_pics do |t|
      t.references :gear, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
