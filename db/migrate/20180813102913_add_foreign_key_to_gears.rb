class AddForeignKeyToGears < ActiveRecord::Migration[5.2]
  def change
    add_reference :gears, :user
  end
end
