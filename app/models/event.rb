class Event < ApplicationRecord
  validates :date, :loc_event, :description, presence: true
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :attended_events, inverse_of: 'attended_even'
  has_many :attendees, through: :attended_events

  scope :coming, -> { where('date >= ?', Date.today) }
  scope :past, -> { where('date < ?', Date.today) }
end
