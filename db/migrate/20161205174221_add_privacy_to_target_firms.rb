class AddPrivacyToTargetFirms < ActiveRecord::Migration[5.0]
  def change
    add_column :target_firms, :privacy, :boolean
  end
end
