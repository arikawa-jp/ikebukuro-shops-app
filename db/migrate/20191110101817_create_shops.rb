class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :genre
      t.string :business_hours
      t.string :url
      t.text :memo

      t.timestamps
    end
  end
end
