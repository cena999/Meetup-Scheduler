class Schedule < ApplicationRecord
  belongs_to :meetup

  has_many :availables
end