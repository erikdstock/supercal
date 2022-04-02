class Event < ApplicationRecord
  belongs_to :event_host
  validates_presence_of :name
end
