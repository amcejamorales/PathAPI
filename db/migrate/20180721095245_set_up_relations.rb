class SetUpRelations < ActiveRecord::Migration[5.2]
  def change
    add_reference :arcs, :graph, foreign_key: true
    add_reference :arc_nodes, :arc, foreign_key: true
    add_reference :arc_nodes, :node, foreign_key: true 
  end
end
