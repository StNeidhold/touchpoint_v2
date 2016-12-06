class FollowUp < ApplicationRecord
  # Direct associations

  belongs_to :firm

  belongs_to :user

  # Indirect associations

  # Validations
validates :follow_up_type, :presence => true
validates :touchpoint_id, :presence => true
validates :user_id, :presence => true
validates :firm_id, :presence => true
validates :contact_id, :presence => true



end
