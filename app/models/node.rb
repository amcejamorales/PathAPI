class Node < ApplicationRecord
  validates :built_on, presence: true
  validates :order, presence: true
  validates_inclusion_of :forward_opening, in: [true, false]
  validates_inclusion_of :left_opening, in: [true, false]
  validates_inclusion_of :right_opening, in: [true, false]
  validates :distance_from_start, presence: true
  belongs_to :graph
  has_many :arc_nodes
  has_many :arcs, through: :arc_nodes
end
