class AddWardPositionToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :ward, :string
    add_column :users, :youth_adult, :string
  end

  def self.down
    remove_column :users, :youth_adult
    remove_column :users, :ward
  end
end
