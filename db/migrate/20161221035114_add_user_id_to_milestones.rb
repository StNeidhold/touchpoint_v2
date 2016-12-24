class AddUserIdToMilestones < ActiveRecord::Migration[5.0]
  def change
    add_column :milestones, :user_id, :integer
  end
end
