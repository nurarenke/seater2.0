require 'rails_helper'

describe "Creating a new event" do
  let(:user) { User.create(user_attributes) }

  before do
    sign_in(user)
  end

  it "saves the event and shows the event index page" do
    visit user_events_path(user)

    click_link 'Create Event'

    expect(current_path).to eq(new_user_event_path(user))

    fill_in "Event name",  with: "Example Event"
    fill_in "Event description", with: "example description"
    fill_in "Location", with: "Venue Name"
    fill_in "Date", with: "2019-08-17"

    click_button 'Create Event'

    expect(current_path).to eq(user_events_path(user))

    expect(page).to have_text('Example Event')
  end

  it "does not save the user if it's invalid" do
    visit new_user_event_path(user)

    expect {
      click_button 'Create Event'
    }.not_to change(Event, :count)

    expect(page).to have_text('error')
  end
end