require 'csv'

class Attendee < ApplicationRecord
  belongs_to :event
  belongs_to :table, optional: true

  def self.import(file)
    CSV.foreach(file.path, headers:true, header_converters: :symbol) do |row|
      Attendee.create! row.to_hash
    end
  end
end
