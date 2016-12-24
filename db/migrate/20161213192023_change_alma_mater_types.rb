class ChangeAlmaMaterTypes < ActiveRecord::Migration[5.0]
  def change

    rename_column :contacts, :bs_alma_mater, :bs_alma_mater_id
    change_column :contacts, :bs_alma_mater_id, :integer
    rename_column :contacts, :ug_alma_mater, :ug_alma_mater_id
    change_column :contacts, :ug_alma_mater_id, :integer

  end
end
