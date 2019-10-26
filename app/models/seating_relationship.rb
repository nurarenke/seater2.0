class SeatingRelationship < ApplicationRecord
  belongs_to :primary_attendee, :class_name => 'Attendee'
  belongs_to :secondary_attendee, :class_name => 'Attendee'
  enum relationship_code: [:must, :want, :must_not]
end
