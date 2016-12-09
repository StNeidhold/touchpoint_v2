class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :touchpoints, :setting, :setting_id
  end
end
