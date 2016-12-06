class Verify < ApplicationRecord
  # Direct associations

  belongs_to :recruiting_event

  belongs_to :user

  # Indirect associations

  # Validations
  validates :user_id, :presence => true
  validates :recruiting_event_id, :presence => true

end
