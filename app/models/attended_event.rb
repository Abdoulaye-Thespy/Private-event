class AttendedEvent < ApplicationRecord
  validates_uniqueness_of :user_id, scope: [:event_id]
  belongs_to :attended_even, class_name: 'Event',  foreign_key: 'event_id'
  belongs_to :attendee, class_name: 'User', foreign_key: 'user_id'
end
