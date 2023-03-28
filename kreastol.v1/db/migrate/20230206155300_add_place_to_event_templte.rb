class AddPlaceToEventTemplte < ActiveRecord::Migration[7.0]
  def change
    add_reference :event_templates, :place, null: true, foreign_key: true
  end
end
