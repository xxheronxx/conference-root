class AddChoice3ToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :choice3, :string
  end

  def self.down
    remove_column :users, :choice3
  end
end
