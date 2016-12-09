class AddSettingToRecruitingEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :recruiting_events, :setting_id, :integer
  end
end
