class Schedule < ApplicationRecord
  belongs_to :meetup

  has_many :availables

  has_and_belongs_to_many :people
end