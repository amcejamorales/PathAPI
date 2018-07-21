class Arc < ApplicationRecord
  validates :direction, presence: true
  validates :arc_distance, presence: true
  belongs_to :graph
  has_one :start, class_name: "ArcNode"
  has_one :finish, class_name: "ArcNode"
  has_many :arc_nodes
  has_many :nodes, through: :arc_nodes
end
