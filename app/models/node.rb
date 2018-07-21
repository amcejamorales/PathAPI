class Node < ApplicationRecord
  validates :built_on, presence: true
  validates :order, presence: true
  validates :forward_opening, presence: true
  validates :left_opening, presence: true
  validates :right_opening, presence: true
  validates :distance_from_start, presence: true
  belongs_to :graph
  has_many :arc_nodes
  has_many :arcs, through: :arc_nodes
end
