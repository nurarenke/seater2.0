class EventsController < ApplicationController
  def index
    @events = Event.where(user_id: session[:user_id])
  end

  def show
    @event = Event.find(params[:id])
  end
end
