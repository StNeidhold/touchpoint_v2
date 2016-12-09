class AddStringBoxToXyGraph < ActiveRecord::Migration[5.0]
  def change
    add_column :xy_graph_shells, :stringbox, :string
  end
end
