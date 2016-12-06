class RecruitingEvent < ApplicationRecord
  # Direct associations

  has_many   :verifies,
             :dependent => :destroy

  belongs_to :firm

  # Indirect associations

  # Validations
  validates :name, :presence => true
  validates :date, :presence => true
  validates :location, :presence => true
  validates :address, :presence => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true
  validates :firm_id, :presence => true


end
