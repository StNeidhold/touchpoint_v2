class AddGroupIdToMilestones < ActiveRecord::Migration[5.0]
  def change
    add_column :milestones, :group_id, :integer
  end
end
