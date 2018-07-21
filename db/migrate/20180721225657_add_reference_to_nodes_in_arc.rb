class AddReferenceToNodesInArc < ActiveRecord::Migration[5.2]
  def change
    add_reference :arcs, :node
  end
end
