module Seating
  # Creates table assignments for seating relationships
  class Assignments
    def table_assignments(event_id, attendees, tables, total_seats):

      # dont even try to solve this if there isnt enough seats
      if (total_seats < len(attendees))
        print "Not enough seats! #{attendees} attendees but only #{total_seats} seats!"
        return false
      end

      relationships = build_relationships(attendees)
    end

    def build_relationships(attendees)
      
    end
  end
end