class CreateGraphs < ActiveRecord::Migration
  def change
    create_table :graphs do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
