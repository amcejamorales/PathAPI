class Arc < ApplicationRecord
  validates :built_on, presence: true
  validates :direction, presence: true
  validates :arc_distance, presence: true
  belongs_to :graph
  belongs_to :start, class_name: "Node", foreign_key: "node_id"
  belongs_to :finish, class_name: "Node", foreign_key: "node_id"
end
