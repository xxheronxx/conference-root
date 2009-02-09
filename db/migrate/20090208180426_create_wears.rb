class CreateWears < ActiveRecord::Migration
  def self.up
    create_table :wears do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :wears
  end
end
