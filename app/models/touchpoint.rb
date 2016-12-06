class Touchpoint < ApplicationRecord
  # Direct associations

  belongs_to :firm

  belongs_to :contact

  belongs_to :user

  # Indirect associations
  # has_many   :contacts,
  #            :through => :touchpoints,
  #            :source => :user

  # Validations
  validates :date, :presence => true
  # validates :time, :presence => true
  validates :user_id, :presence => true
  validates :contact_id, :presence => true
  validates :firm_id, :presence => true
  validates :description, :presence => true
  validates :location, :presence => true

end
