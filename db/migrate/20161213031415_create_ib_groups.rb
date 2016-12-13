class CreateIbGroups < ActiveRecord::Migration
  def change
    create_table :ib_groups do |t|
      t.string :name

      t.timestamps

    end
  end
end
