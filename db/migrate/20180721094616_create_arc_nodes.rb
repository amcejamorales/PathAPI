class CreateArcNodes < ActiveRecord::Migration[5.2]
  def change
    create_table :arc_nodes do |t|
      t.string :position

      t.timestamps
    end
  end
end
