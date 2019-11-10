class CreateIInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :i_informations do |t|
      t.text :name
      t.text :price
      t.text :genre
      t.text :business_hours
      t.text :url
      t.text :memo

      t.timestamps
    end
  end
end
