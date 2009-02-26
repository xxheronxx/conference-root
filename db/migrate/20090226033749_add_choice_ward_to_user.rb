class AddChoiceWardToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :choice1_ward, :string
    add_column :users, :choice2_ward, :string
    add_column :users, :choice3_ward, :string
  end

  def self.down
    remove_column :users, :choice1_ward
    remove_column :users, :choice2_ward
    remove_column :users, :choice3_ward
  end
end
