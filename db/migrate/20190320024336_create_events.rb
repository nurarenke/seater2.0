class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_description
      t.string :location
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
