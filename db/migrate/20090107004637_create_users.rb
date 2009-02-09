class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :fname, :mname, :lname, :class_or_quorum, :phone, :address, :city, :zip, :email, :choice1, :choice2
      t.date :birthday

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
