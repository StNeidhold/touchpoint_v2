class AddDateColumnToGraphShell < ActiveRecord::Migration[5.0]
  def change
    add_column :xy_graph_shells, :date, :date
    add_column :xy_graph_shells, :time, :time
  end
end
