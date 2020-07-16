require 'date'
class User < ApplicationRecord
  validates :name, :email, presence: true
  has_many :events, inverse_of: 'creator'
  has_many :attended_events, inverse_of: 'attendee'
  has_many :attended_evens, through: :attended_events

  def upcoming_events
    events.where('date >= ?', Date.today)
  end

  def prev_coming_events
    events.where('date < ?', Date.today)
  end

  def my_events
    events
  end
end
