class Session < ApplicationRecord
  has_many :selections

  # has_secure_password

  validates_length_of :session_password, minimum: 8, too_short: 'please enter at least 8 characters', on: :create
  validates_presence_of   :session_name, :message => 'Please provide a session name', on: :create
  validates_uniqueness_of :session_name, :case_sensitive => false, :message => "Session name has already been taken", on: :create
  validates_confirmation_of :session_password, on: :create, if: :session_password_changed?
end