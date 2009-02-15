class AddAdultTypeToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :adult_type, :string
  end

  def self.down
    remove_column :users, :adult_type
  end
end
