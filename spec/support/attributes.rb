def user_attributes(overrides = {})
  {
    name: "Example User",
    email: "user@example.com",
    password: "secretpassword",
    password_confirmation: "secretpassword"
  }.merge(overrides)
end

def event_attributes(overrides = {})
  {
    event_name: "Example Event",
    event_description: "A cool event",
    location: "The Biltmore",
    date: "2019-08-17"
  }.merge(overrides)
end

def table_attributes(overrides = {})
  {
    table_name: "Example Table",
    max_seats: 10
  }.merge(overrides)
end