def user_attributes(overrides = {})
  {
    name: "Example User",
    email: "user@example.com",
    password: "secretpassword",
    password_confirmation: "secretpassword"
  }.merge(overrides)
end