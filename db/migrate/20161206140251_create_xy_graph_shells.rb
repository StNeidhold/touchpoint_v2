class CreateXyGraphShells < ActiveRecord::Migration[5.0]
  def change
    create_table :xy_graph_shells do |t|
      t.string :x
      t.string :y

      t.timestamps
    end
  end
end
