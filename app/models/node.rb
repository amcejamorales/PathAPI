class Node < ApplicationRecord
  validates :order, presence: true
  validates :forward_opening, presence: true
  validates :left_opening, presence: true
  validates :right_opening, presence: true
  validates :distance_from_start, presence: true
  has_many :arc_nodes 
end
