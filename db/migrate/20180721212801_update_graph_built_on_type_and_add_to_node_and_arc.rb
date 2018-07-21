class UpdateGraphBuiltOnTypeAndAddToNodeAndArc < ActiveRecord::Migration[5.2]
  def change
    change_column :graphs, :built_on, :datetime
    add_column :nodes, :built_on, :datetime
    add_column :arcs, :built_on, :datetime
  end
end
