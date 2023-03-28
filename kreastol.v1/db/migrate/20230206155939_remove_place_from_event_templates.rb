class RemovePlaceFromEventTemplates < ActiveRecord::Migration[7.0]
  def change
    remove_column :event_templates, :place
  end
end
