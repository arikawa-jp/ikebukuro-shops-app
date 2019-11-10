class ChangeDataPriceToIInformation < ActiveRecord::Migration[6.0]
  def change
    change_column :i_informations, :price, :integer
  end
end
