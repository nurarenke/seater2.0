class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table :attendees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :is_vip
      t.string :meal_request
      t.string :note
      t.references :event, foreign_key: true
      t.references :table, foreign_key: true

      t.timestamps
    end
  end
end
