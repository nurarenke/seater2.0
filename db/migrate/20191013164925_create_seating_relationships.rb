class CreateSeatingRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :seating_relationships do |t|
      t.references :primary_attendee
      t.references :secondary_attendee
      t.integer :relationship_code

      t.timestamps
    end
  end
end
