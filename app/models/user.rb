class User < ApplicationRecord
  validates :name, :email, presence: true
  has_many :events, inverse_of: 'creator'
end
