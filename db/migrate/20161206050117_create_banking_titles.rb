class CreateBankingTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :banking_titles do |t|
      t.string :title

      t.timestamps
    end
  end
end
