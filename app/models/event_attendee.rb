class EventAttendee < ApplicationRecord

  belongs_to :recruiting_event

  validates :user_id, :presence => true, :uniqueness => { :scope => :recruiting_event_id }

end
