class AddExternalIdToAttendee < ActiveRecord::Migration[5.0]
  def change
    add_column :attendees, :external_id, :integer
  end
end
