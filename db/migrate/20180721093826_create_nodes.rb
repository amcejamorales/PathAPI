class CreateNodes < ActiveRecord::Migration[5.2]
  def change
    create_table :nodes do |t|
      t.integer :order
      t.boolean :forward_opening
      t.boolean :left_opening
      t.boolean :right_opening
      t.float :distance_from_start

      t.timestamps
    end
  end
end
