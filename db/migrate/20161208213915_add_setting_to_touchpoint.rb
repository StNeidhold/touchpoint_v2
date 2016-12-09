class AddSettingToTouchpoint < ActiveRecord::Migration[5.0]
  def change
    add_column :touchpoints, :setting, :string
  end
end
