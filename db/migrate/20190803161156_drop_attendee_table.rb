class DropAttendeeTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :attendees
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
