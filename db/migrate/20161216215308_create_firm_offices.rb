class CreateFirmOffices < ActiveRecord::Migration
  def change
    create_table :firm_offices do |t|
      t.integer :firm_id
      t.string :city_id
      t.string :integer

      t.timestamps

    end
  end
end
