class Schedule < ApplicationRecord
  belongs_to :meetup

  has_many :available
end