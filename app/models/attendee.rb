require 'csv'

class Attendee < ApplicationRecord
  belongs_to :event
  belongs_to :table, optional: true
  has_many :relationships, :class_name => 'SeatingRelationship', :foreign_key => 'primary_attendee_id'

  def self.import(file)
    CSV.foreach(file.path, headers:true, header_converters: :symbol) do |row|
      Attendee.create! row.to_hash
    end
  end
end
