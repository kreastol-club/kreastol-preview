class Event < ApplicationRecord
  belongs_to :event_template
  belongs_to :project
end
