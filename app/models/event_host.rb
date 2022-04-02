class EventHost < ApplicationRecord
    validates_presence_of :name
    has_many :events

    def ical
        @ical ||= Icalendar::Calendar.new
    end

end
