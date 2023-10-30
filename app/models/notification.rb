class Notification < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :message, presence: true
  validates :read, presence: true
end
