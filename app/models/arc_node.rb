class ArcNode < ApplicationRecord
  validates :position, presence: true
  belongs_to :node
  belongs_to :arc
end
