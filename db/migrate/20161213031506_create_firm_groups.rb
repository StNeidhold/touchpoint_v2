class CreateFirmGroups < ActiveRecord::Migration
  def change
    create_table :firm_groups do |t|
      t.integer :firm_id
      t.integer :ib_group_id

      t.timestamps

    end
  end
end
