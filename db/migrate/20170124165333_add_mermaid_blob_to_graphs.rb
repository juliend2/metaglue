class AddMermaidBlobToGraphs < ActiveRecord::Migration
  def change
    add_column :graphs, :mermaid_blob, :text
  end
end
