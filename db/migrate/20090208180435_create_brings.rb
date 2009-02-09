class CreateBrings < ActiveRecord::Migration
  def self.up
    create_table :brings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :brings
  end
end
