class AddPrivacyToTouchpoints < ActiveRecord::Migration[5.0]
  def change
    add_column :touchpoints, :privacy, :boolean
  end
end
