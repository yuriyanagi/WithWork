class Record < ApplicationRecord
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :class1, presence: true
  validates :class2, presence: true

  belongs_to :user
end
