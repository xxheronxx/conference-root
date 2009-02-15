class AddTshirtOptionsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :tshirt_agreement, :string
    add_column :users, :tshirt_size, :string
  end

  def self.down
    remove_column :users, :tshirt_size
    remove_column :users, :tshirt_agreement
  end
end
