class EventsController < ApplicationController
  def index
    @events = Event.where(user_id: session[:user_id])
  end

  def new
    @event = Event.new
    @current_user = User.find(session[:user_id])
  end

  def create
    @current_user = User.find(session[:user_id])
    @event = Event.create(event_params.merge(user_id: @current_user.id))
    if @event.save
      flash[:notice] = "Event was successfully created"
      redirect_to user_events_path(@current_user)
    else
      flash[:notice] = "Event was not successfully created"
      render :new
    end

  end

  def show
    @event = Event.find(params[:id])
    @attendees = Attendee.where(event_id: params[:id])
    @tables = Table.where(event_id:params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :event_description, :location, :date)
  end
end
