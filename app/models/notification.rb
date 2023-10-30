class Notification < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :message, presence: true
  validates :read, inclusion: { in: [true, false] }
end
