require 'rails_helper'

describe "Editing a table" do

  it "updates the table and shows the table's updated details" do
    user = User.create(user_attributes)
    event = Event.create(event_attributes(user: user))
    table = Table.create(table_attributes(event: event))

    sign_in(user)

    visit user_event_table_url(user, event, table)

    click_link 'Edit Table'

    expect(current_path).to eq(edit_user_event_table_path(user, event, table))

    expect(find_field('Table name').value).to eq(table.table_name)

    fill_in 'Table name', with: "Updated Table Name"

    click_button 'Update Table'

    expect(current_path).to eq(user_event_table_path(user, event, table))
  end

end