class RemoveThumbnailFromProjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :thumbnail
  end
end
