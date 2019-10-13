class AttendeesController < ApplicationController
  def import
    current_user = User.find(session[:user_id])
    event = Event.find(params[:event_id])
    Attendee.import(params[:file])
    redirect_to user_event_path(current_user, event), notice: "Attendees have been uploaded"
  end

  def edit
    @attendee = Attendee.find(params[:id])
    @event = Event.find(params[:event_id])
    @user = User.find(params[:id])
    @table = Table.find(@attendee.table_id)
  end
end
