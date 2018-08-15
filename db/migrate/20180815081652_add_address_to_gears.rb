class AddAddressToGears < ActiveRecord::Migration[5.2]
  def change
    add_column :gears, :address, :string
  end
end
