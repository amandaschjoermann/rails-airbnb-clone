require 'faker'
Gear.destroy_all
User.destroy_all


# Creating users:

puts 'Creating 5 users!'

url = "https://scontent-frx5-1.xx.fbcdn.net/v/t1.0-9/32497592_10216332285839012_7014404072291696640_n.jpg?_nc_cat=0&oh=1f254c63ad7b10d964f94d0be7bc521e&oe=5BF5D6C4"
user = User.new(
  email: "amanda@rules.com",
  password: "123456"
)
user.remote_photo_url = url
user.save!

url = "https://scontent-frx5-1.xx.fbcdn.net/v/t1.0-9/32497592_10216332285839012_7014404072291696640_n.jpg?_nc_cat=0&oh=1f254c63ad7b10d964f94d0be7bc521e&oe=5BF5D6C4"
user1 = User.new(
  email: "amanda1@rules.com",
  password: "123456"
)
user1.remote_photo_url = url
user1.save!

url = "https://scontent-frx5-1.xx.fbcdn.net/v/t1.0-9/32497592_10216332285839012_7014404072291696640_n.jpg?_nc_cat=0&oh=1f254c63ad7b10d964f94d0be7bc521e&oe=5BF5D6C4"
user2 = User.new(
  email: "amanda2@rules.com",
  password: "123456"
)
user2.remote_photo_url = url
user2.save!

url = "https://scontent-frx5-1.xx.fbcdn.net/v/t1.0-9/32497592_10216332285839012_7014404072291696640_n.jpg?_nc_cat=0&oh=1f254c63ad7b10d964f94d0be7bc521e&oe=5BF5D6C4"
user3 = User.new(
  email: "amanda3@rules.com",
  password: "123456"
)
user3.remote_photo_url = url
user3.save!

url = "https://scontent-frx5-1.xx.fbcdn.net/v/t1.0-9/32497592_10216332285839012_7014404072291696640_n.jpg?_nc_cat=0&oh=1f254c63ad7b10d964f94d0be7bc521e&oe=5BF5D6C4"
user4 = User.new(
  email: "amanda4@rules.com",
  password: "123456"
)
user4.remote_photo_url = url
user4.save!
puts 'Finished!'





# Creating 15 listings:

puts 'Creating 15 new listings'

url = "https://images.unsplash.com/photo-1526359395878-56f9a884ea5a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=09e1ea3717da77d318194432276af3bc&auto=format&fit=crop&w=800&q=60"
gear = Gear.new(
  name: "Mountainbike",
  address: "Nørrebrogade 115",
  rating:  3,
  description: "Very solid and fast. Great for both sunny and rainy days",
  category: "On-Land",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "1 listing done"

url = "https://images.unsplash.com/photo-1531608139434-1912ae0713cd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=77fa1e4cad67c85d0053550c91f81c0c&auto=format&fit=crop&w=1351&q=80"
gear = Gear.new(
  name: "Racing Bike",
  address: "Langstrupvej 4, Fredensborg",
  rating:  5,
  description: "Very sleek bike. Takes you anywhere in no time",
  category: "On-Land",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "2 listing done"

url = "https://images.unsplash.com/photo-1522698624510-feb2a094e95c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=96dbbd0b03966856e75109fd67461de9&auto=format&fit=crop&w=1350&q=80"
gear = Gear.new(
  name: "Tent",
  address: "Røntoftegade 38, Dyssegård",
  rating:  3,
  description: "Keeps the rain out and holds you warm during cold nights. Just what you need",
  category: "On-Land",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "3 listing done"

url = "https://images.unsplash.com/photo-1518608774889-b04d2abe7702?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=cdc8bcc00933d2d1c772721df2d75b16&auto=format&fit=crop&w=1300&q=80"
gear = Gear.new(
  name: "Snowboard",
  address: "Søbredden 43, Gentofte",
  rating:  2,
  description: "This would make you feel like the king of the Alps. Gear up and take a ride",
  category: "On-Land",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "4 listing done"

url = "https://images.unsplash.com/photo-1504278542693-6e904de08f22?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c358ccb8fb392f171f2a0e1bc1200264&auto=format&fit=crop&w=1350&q=80"
gear = Gear.new(
  name: "Climbing gear",
  address: "Odense, Denmark",
  rating:  3,
  description: "All the gear you need for a day of climbing. Everything fits in one bag!",
  category: "On-Land",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "5 listing done"

url = "https://images.unsplash.com/photo-1474402656496-6641a08dab21?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9091d27bd40d681912c303e3a3a08f23&auto=format&fit=crop&w=1350&q=80"
gear = Gear.new(
  name: "Surfboard",
  address: "Middelfart, Denmark",
  rating:  4,
  description: "A super beginners board. You will learn to surf in no time",
  category: "In-Water",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "6 listing done"

url = "https://images.unsplash.com/photo-1499858476316-343e284f1f67?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2984b44b9037f1f962c654d98623f164&auto=format&fit=crop&w=1350&q=80"
gear = Gear.new(
  name: "Kayak",
  address: "Hvidestensparken 1, Denmark",
  rating:  3,
  description: "Great for a family trip! We have four kayaks in total if you need more than one",
  category: "In-Water",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "7 listing done"

url = "https://images.unsplash.com/photo-1463694372132-6c267f6ba561?ixlib=rb-0.3.5&s=4173ee49a2beba34f21268653a6c221e&auto=format&fit=crop&w=1351&q=80"
gear = Gear.new(
  name: "Kayak",
  address: "Ågade 120, Copenhagen",
  rating:  4,
  description: "Kayak with a lot of space. Perfect for a long kayak weekend",
  category: "In-Water",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "8 listing done"

url = "https://images.unsplash.com/photo-1477894387642-00a731c511b3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5f888f1a8cc23c0c17aa06f03aa05930&auto=format&fit=crop&w=1479&q=80"
gear = Gear.new(
  name: "Snorkeling set",
  address: "Jagtvej 100, Kbh",
  rating:  2,
  description: "Three complete snorkeling sets!",
  category: "In-Water",
  price: rand(50..250)
)
gear.user = [user, user1, user2, user3, user4].sample
gear.remote_photo_url = url
gear.save!

puts "9 listing done"

url = "https://images.unsplash.com/photo-1502933691298-84fc14542831?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b8ad16f37bd1d8fea868cca654f8d8a8&auto=format&fit=crop&w=1350&q=80"
gear = Gear.new(
  name: "Surfboard",
  address: "Lynge, Denmark",
  rating:  1,
  description: "Get the experience of being a pro surfer at a low cost. Smooth riding surfboard",
  category: "In-Water",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "10 listing done"

url = "https://images.unsplash.com/photo-1527732211531-a929ba19f2b3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b6d86b5709cabc1f29cb06ab81eaf489&auto=format&fit=crop&w=1350&q=80"
gear = Gear.new(
  name: "Parachute",
  address: "Hillerød, Denmark",
  rating:  5,
  description: "Almost brand new parachute. Super safe and gives you a great experience",
  category: "Above-Ground",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "11 listing done"

url = "https://images.unsplash.com/photo-1495556614554-6d268cee358a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=158a16c6c73934acbf8c53caa5ee76f6&auto=format&fit=crop&w=1351&q=80"
gear = Gear.new(
  name: "Air Balloon",
  address: "Næstved, Denmark",
  rating:  5,
  description: "Perfect for a cozy datenight or quality time with a friend",
  category: "Above-Ground",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "12 listing done"

url = "https://images.unsplash.com/photo-1528833583405-67dede7ccfb5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c1dd7d7c5380fc1ee2f7698d6fb959c2&auto=format&fit=crop&w=1353&q=80"
gear = Gear.new(
  name: "Parasailing",
  address: "Hundested, Denmark",
  rating:  2,
  description: "This is best to do in the summer. It is awesome. Just relax and enjoy!",
  category: "Above-Ground",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "13 listing done"

url = "https://images.unsplash.com/photo-1471247511763-88a722fc9919?ixlib=rb-0.3.5&s=3a8e217a34b98ad0344b9bf325188f51&auto=format&fit=crop&w=1490&q=80"
gear = Gear.new(
  name: "Paraglider",
  address: "Husum, Denmark",
  rating:  1,
  description: "Solid and safe paraglider. Great for everyone, even beginners",
  category: "Above-Ground",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "14 listing done"

url = "https://images.unsplash.com/photo-1483301563007-8d0161daa1d0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a6c4f142474da0ceee0a3540ce085e5b&auto=format&fit=crop&w=1267&q=80"
gear = Gear.new(
  name: "Skydiving gear",
  address: "Aarhus, Denmark",
  rating:  4,
  description: "Complete gear pack. If it is your first time you will have a guide",
  category: "Above-Ground",
  price: rand(50..250)
)
  gear.user = [user, user1, user2, user3, user4].sample
  gear.remote_photo_url = url
  gear.save!

puts "15 listing done"


puts 'Finished!'












