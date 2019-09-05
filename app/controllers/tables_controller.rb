class TablesController < ApplicationController
  def show
    @table_attendees = Attendee.where(table_id: params[:id])
    @table = Table.find(params[:id])
    @event = Event.find(params[:event_id])
  end

  def edit
    @table = Table.find(params[:id])
    @event = Event.find(params[:event_id])
    @user = User.find(params[:id])
  end
end
