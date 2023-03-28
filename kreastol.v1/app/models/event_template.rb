class EventTemplate < ApplicationRecord
  validates :name, presence: true
  belongs_to :place
end
