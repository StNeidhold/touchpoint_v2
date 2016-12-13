class Firm < ApplicationRecord
  # Direct associations

  belongs_to :process_type

  has_many   :recruiting_events,
             :dependent => :destroy

  has_many   :target_firms,
             :dependent => :destroy

  has_many   :follow_ups,
             :dependent => :destroy

  has_many   :touchpoints

  has_many   :contacts

  has_many   :firm_groups

  # Indirect associations

  # Validations
  # Only firm name seems to be both necessary and necessarily unique
  validates :name, :presence => true, :uniqueness => true
  validates :process_type_id, :presence => true
  #validates :industry_id, :presence => true


end
