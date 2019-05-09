class Meetup < ApplicationRecord
  has_many :schedules, inverse_of: :meetup

  accepts_nested_attributes_for :schedules, reject_if: :all_blank, allow_destroy: true

  # has_secure_password

  validates_presence_of   :name, :message => 'Please provide a session name', on: :create
  validates_uniqueness_of :name, :case_sensitive => false, :message => "Meetup name has already been taken", on: :create

  # validates_length_of :session_password, minimum: 8, too_short: 'please enter at least 8 characters', on: :create
  # validates_confirmation_of :session_password, on: :create
end