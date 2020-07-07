class Event < ApplicationRecord
  validates :date, :loc_event, :description, presence: true
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :attended_events
  has_many :attendee, through: :attended_events, source: :user
end
