class AddStockInfoToFirms < ActiveRecord::Migration[5.0]
  def change
    add_column :firms, :ticker, :string
    add_column :firms, :exchange, :string
  end
end
