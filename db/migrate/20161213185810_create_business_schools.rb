class CreateBusinessSchools < ActiveRecord::Migration
  def change
    create_table :business_schools do |t|
      t.string :name

      t.timestamps

    end
  end
end
