class EventAttendeesController < ApplicationController
  def index
    @event_attendees = EventAttendee.all

    render("event_attendees/index.html.erb")
  end

  def show
    @event_attendee = EventAttendee.find(params[:id])

    render("event_attendees/show.html.erb")
  end

  def new
    @event_attendee = EventAttendee.new

    render("event_attendees/new.html.erb")
  end

  def create
    @event_attendee = EventAttendee.new

    @event_attendee.user_id = params[:user_id]
    @event_attendee.recruiting_event_id = params[:recruiting_event_id]

    save_status = @event_attendee.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/event_attendees/new", "/create_event_attendee"
        redirect_to("/event_attendees")
      else
        redirect_back(:fallback_location => "/", :notice => "RSVP successfull")
      end
    else
      render("event_attendees/new.html.erb")
    end
  end

  def edit
    @event_attendee = EventAttendee.find(params[:id])

    render("event_attendees/edit.html.erb")
  end

  def update
    @event_attendee = EventAttendee.find(params[:id])

    @event_attendee.user_id = params[:user_id]
    @event_attendee.recruiting_event_id = params[:recruiting_event_id]

    save_status = @event_attendee.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/event_attendees/#{@event_attendee.id}/edit", "/update_event_attendee"
        redirect_to("/event_attendees/#{@event_attendee.id}", :notice => "Event attendee updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Event attendee updated successfully.")
      end
    else
      render("event_attendees/edit.html.erb")
    end
  end

  def destroy
    @event_attendee = EventAttendee.find(params[:id])

    @event_attendee.destroy

    if URI(request.referer).path == "/event_attendees/#{@event_attendee.id}"
      redirect_to("/", :notice => "Event attendee deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Event attendee deleted.")
    end
  end
end
