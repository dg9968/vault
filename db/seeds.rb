User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

Address.create!(line1: "9968 SW 222nd Terrace",
                city: "Cutler Bay",
                state: "FL",
                zip: "33190",
                :addressable => User.find(1))

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
  address = Faker::Address
  Address.create!(line1: address.street_address,
                line2: address.secondary_address,
                city: address.city,
                state: address.state,
                zip: address.state,
                :addressable => User.find(n+2))
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }

end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

