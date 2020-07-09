class User < ApplicationRecord
  validates :name, :email, presence: true
  has_many :events, inverse_of: 'creator'
  has_many :attended_events, inverse_of: 'attendee'
  has_many :participations, through: :attended_events, source: :event
end
