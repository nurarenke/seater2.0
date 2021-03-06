class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string :table_name
      t.integer :max_seats
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
