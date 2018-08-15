require 'faker'
Gear.destroy_all
User.destroy_all

puts 'Creating users'
user_1 = User.new(email: "user-1@test.com", password: "123456")
user_1.save!

user_2 = User.new(email: "user-2@test.com", password: "123456")
user_2.save!

user_3 = User.new(email: "user-3@test.com", password: "123456")
user_3.save!

user_4 = User.new(email: "user-4@test.com", password: "123456")
user_4.save!

user_5 = User.new(email: "user-5@test.com", password: "123456")
user_5.save!
puts 'Finished!'


puts 'Creating 15 new listings'
15.times do
  url = %w[
    https://images.unsplash.com/photo-1505705694340-019e1e335916?
    https://images.unsplash.com/photo-1516474087277-9fe7429a2908?
    https://images.unsplash.com/photo-1455729552865-3658a5d39692?
  ].sample
  city = %w[Nørrebro Vesterbro Amager Østerbro].sample
  name = %w[Tent Bike Surfboard Parachute Diving gear].sample
  gear = Gear.new(
    name: name,
    address: city,
    rating:  rand(0..5),
    description: "This is a cool #{name}",
    category: %w[In-Water Above-Ground On-Land].sample,
    price: rand(50..150)
  )
  gear.user = [user_1, user_2, user_3, user_4, user_5].sample
  gear.remote_photo_url = url
  gear.save!
end
puts 'Finished!'












