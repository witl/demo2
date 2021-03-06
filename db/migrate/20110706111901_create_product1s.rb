class CreateProduct1s < ActiveRecord::Migration
  def self.up
    create_table :product1s do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :product1s
  end
end
