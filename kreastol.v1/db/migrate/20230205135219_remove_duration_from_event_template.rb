class RemoveDurationFromEventTemplate < ActiveRecord::Migration[7.0]
  def change
    remove_column :event_templates, :duration
  end
end
