class CreateProcessTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :process_types do |t|
      t.string :process_type

      t.timestamps
    end
  end
end
