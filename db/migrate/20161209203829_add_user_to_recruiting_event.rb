class AddUserToRecruitingEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :recruiting_events, :user_id, :integer
  end
end
