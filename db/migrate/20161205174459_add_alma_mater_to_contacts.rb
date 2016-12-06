class AddAlmaMaterToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :alma_mater, :string
  end
end
