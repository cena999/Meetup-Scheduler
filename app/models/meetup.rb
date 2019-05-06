class Meetup < ApplicationRecord
  has_many :schedules, inverse_of: :meetup
  accepts_nested_attributes_for :schedules, reject_if: :all_blank, allow_destroy: true
end