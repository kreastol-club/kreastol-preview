class AddPlaceToEventTemplate < ActiveRecord::Migration[7.0]
  def change
    add_column :event_templates, :place, :string
  end
end
