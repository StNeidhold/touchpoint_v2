class ChangeSettingIdToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :touchpoints, :setting_id, :integer
  end
end
