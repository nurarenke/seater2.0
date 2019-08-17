class TablesController < ApplicationController
  def show
    @table_attendees = Attendee.where(table_id: params[:id])
    @table = Table.find(params[:id])
    @event = Event.find(params[:event_id])
  end
end
