class CreateCommets < ActiveRecord::Migration
  def self.up
    create_table :commets do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :commets
  end
end
