class Arc < ApplicationRecord
  validates :direction, presence: true
  validates :arc_distance, presence: true
end