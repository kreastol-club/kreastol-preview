class AddHashidToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :hash_id, :string
  end
end
