class ChangeProcessTypeColumn < ActiveRecord::Migration[5.0]
  def change

    remove_column :firms, :process_type
    add_column :firms, :process_type_id, :integer

  end
end
