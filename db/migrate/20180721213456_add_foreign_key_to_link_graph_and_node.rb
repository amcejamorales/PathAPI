class AddForeignKeyToLinkGraphAndNode < ActiveRecord::Migration[5.2]
  def change
    add_reference :nodes, :graph, foreign_key: true 
  end
end
