# Sample users. (The bang after create will raise exceptions if it doesn't work.)

User.create!(name: "Example User",
						 email: "example@appwebtech.com",
						 password:  						"foobar",
						 password_confirmation: "foobar")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@appwebtech.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end