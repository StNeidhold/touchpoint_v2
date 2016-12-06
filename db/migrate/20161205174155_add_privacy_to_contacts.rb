class AddPrivacyToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :privacy, :boolean
  end
end
