class TargetFirm < ApplicationRecord
  # Direct associations

  belongs_to :firm

  belongs_to :user

  # Indirect associations

  # Validations
validates :user_id, :presence => true, :uniqueness => { :scope => :firm_id }
validates :firm_id, :presence => true, :uniqueness => { :scope => :user_id }

end
