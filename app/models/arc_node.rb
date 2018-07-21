class ArcNode < ApplicationRecord
  validates :position, presence: true
  belongs_to :node
end
