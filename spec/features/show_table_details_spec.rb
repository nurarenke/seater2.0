require 'rails_helper'

describe "Viewing a table details page" do

  it "shows the table's details" do
    user = User.create!(user_attributes)
    event = Event.create!(event_attributes(user: user))
    table = Table.create!(table_attributes(event: event))


    sign_in(user)

    visit user_event_table_url(user, event, table)

    expect(page).to have_text(table.table_name)
    expect(page).to have_text(table.max_seats)
  end

end