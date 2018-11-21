# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "beging seeding test data"

puts "seeding movies"
Movie.create(name: "Friday the 13th", poster: "posterurl")
Movie.create(name: "The Conjuring", poster: "posterurl")
Movie.create(name: "The Nun", poster: "posterurl")
Movie.create(name: "The Ring", poster: "posterurl")

puts "seeding clubs"
Club.create(movie_id: 1, active: true)
Club.create(movie_id: 2, active: true)
Club.create(movie_id: 3, active: true)
Club.create(movie_id: 4, active: false)
Club.create(movie_id: 1, active: true)

puts "seeding users"
User.create(username: "Seb", email: "seb@seb", password: "secure", matched: true, club_id: 1)
User.create(username: "Chris", email: "chris@chris", password: "secure", matched: true, club_id: 1)
User.create(username: "Sabrina", email: "sabrina@sabrina", password: "secure", matched: true, club_id: 1)

User.create(username: "Sasha", email: "sasha@sasha", password: "secure", matched: true, club_id: 2)
User.create(username: "ChiChi", email: "chichi@chichi", password: "secure", matched: true, club_id: 2)
User.create(username: "Dude", email: "dude@dude", password: "secure", matched: true, club_id: 2)

User.create(username: "Bentley", email: "bentley@bentley", password: "secure", matched: true, club_id: 3)
User.create(username: "Spencer", email: "spencer@spencer", password: "secure", matched: true, club_id: 3)
User.create(username: "Tom", email: "tom@tom", password: "secure", matched: true, club_id: 3)

User.create(username: "Bozena", email: "bozena@bozena", password: "secure", matched: false, club_id: 4)
User.create(username: "Nicole", email: "nicole@nicole", password: "secure", matched: false, club_id: 4)
User.create(username: "Al", email: "al@al", password: "secure", matched: false, club_id: 4)

User.create(username: "Leszek", email: "leszek@leszek", password: "secure", matched: true, club_id: 5)
User.create(username: "Baby", email: "baby@baby", password: "secure", matched: true, club_id: 5)
User.create(username: "Panther", email: "panther@panther", password: "secure", matched: true, club_id: 5)

puts "seeding ratings"
Rating.create(user_id: 1, liked: true, movie_id: 1)
Rating.create(user_id: 1, liked: true, movie_id: 2)
Rating.create(user_id: 2, liked: false, movie_id: 1)
Rating.create(user_id: 3, liked: false, movie_id: 1)

Rating.create(user_id: 4, liked: true, movie_id: 2)
Rating.create(user_id: 4, liked: true, movie_id: 3)
Rating.create(user_id: 5, liked: false, movie_id: 2)
Rating.create(user_id: 6, liked: false, movie_id: 2)

Rating.create(user_id: 7, liked: true, movie_id: 3)
Rating.create(user_id: 8, liked: false, movie_id: 3)
Rating.create(user_id: 9, liked: false, movie_id: 3)

Rating.create(user_id: 10, liked: true, movie_id: 4)
Rating.create(user_id: 11, liked: false, movie_id: 4)
Rating.create(user_id: 12, liked: false, movie_id: 4)

Rating.create(user_id: 13, liked: true, movie_id: 1)
Rating.create(user_id: 14, liked: false, movie_id: 1)
Rating.create(user_id: 15, liked: false, movie_id: 1)

puts "seeding finished"

puts "Reminder: this is only test data"
