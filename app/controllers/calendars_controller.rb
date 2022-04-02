class CalendarsController < ApplicationController
  
  def host
    host_id = params.require(:id)
    @host = EventHost.find(host_id)
    
    @events = @host.events
    
    respond_to do |format|
      format.json { render json: @host}
      format.ics  do
        cal = Icalendar::Calendar.new
        cal.x_wr_calname = @host.name
        @events.each do |event|
          cal.event do |e|
            e.dtstart     = event.start_at
            e.dtend       = event.end_at
            # e.summary     = event.summary
            e.description = event.description
          end
        end
        cal.publish
        render plain: cal.to_ical
      end
    end
  end


end
