class RecruitingEvent < ApplicationRecord
  # Direct associations

  has_many   :verifies,
             :dependent => :destroy

  belongs_to :firm

  belongs_to :setting

  # Indirect associations

  # Validations
  validates :name, :presence => true
  validates :date, :presence => true
  validates :location, :presence => true
  validates :address, :presence => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true
  validates :firm_id, :presence => true

  def date_and_time
   "#{date.strftime("%m/%e")} #{time.strftime("%I%p")}"
 end

 def event_title
  "#{date.strftime("%m/%e")} - #{firm.name} - #{name}"
 end

end
