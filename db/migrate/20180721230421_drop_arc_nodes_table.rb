class DropArcNodesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :arc_nodes
  end
end
