class AddHourAndMinuteToEventTemplate < ActiveRecord::Migration[7.0]
  def change
    add_column :event_templates, :hour, :integer
    add_column :event_templates, :minute, :integer
  end
end
