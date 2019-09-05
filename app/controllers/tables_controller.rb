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

  def update
    @table = Table.find(params[:id])
    table_params = params.require(:table).permit(:table_name, :max_seats)
    @table.update(table_params)
    redirect_to user_event_table_url
  end
end
