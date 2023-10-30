class Task < ApplicationRecord
  belongs_to :taskable, polymorphic: true
  belongs_to :assigned_to_user, class_name: 'User'

  validates :title, presence: true
  validates :description, presence: true
  validates :due_date, presence: true
  validates :status, presence: true
  validates :taskable, presence: true
  validates :assigned_to_user, presence: true
end
