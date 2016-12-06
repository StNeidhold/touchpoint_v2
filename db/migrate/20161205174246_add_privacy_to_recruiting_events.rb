class AddPrivacyToRecruitingEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :recruiting_events, :privacy, :boolean
  end
end
