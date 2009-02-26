class AddInfoToAdmin < ActiveRecord::Migration
  def self.up
    add_column :admins, :full_name, :string
    add_column :admins, :ward, :string
    add_column :admins, :calling, :string
    add_column :admins, :level, :string
  end

  def self.down
    remove_column :admins, :level
    remove_column :admins, :calling
    remove_column :admins, :ward
    remove_column :admins, :full_name
  end
end
