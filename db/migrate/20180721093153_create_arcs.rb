class CreateArcs < ActiveRecord::Migration[5.2]
  def change
    create_table :arcs do |t|
      t.string :direction
      t.float :arc_distance

      t.timestamps
    end
  end
end
