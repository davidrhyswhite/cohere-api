class AddAncestryToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :ancestry, :string
  end
end
