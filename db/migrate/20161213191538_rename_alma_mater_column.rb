class RenameAlmaMaterColumn < ActiveRecord::Migration[5.0]
  def change

    rename_column :contacts, :alma_mater, :bs_alma_mater
    add_column :contacts, :ug_alma_mater, :string

  end
end
