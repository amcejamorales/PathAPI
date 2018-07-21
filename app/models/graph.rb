class Graph < ApplicationRecord
  validates :built_on, presence: true
  has_many :arcs
  has_many :nodes
end
