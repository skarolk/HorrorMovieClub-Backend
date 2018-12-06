# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "real movie seeds"

def page_check()
  page_count = Tmdb::Genre.movies(27).total_pages - 1
  return page_count
end

def create_movies()
  page_number = 1
  total_pages = page_check()
  while page_number < 25
    movies = Tmdb::Genre.movies(27, page: page_number)
    i = 0
    while i < 20
      if (movies.results[i].original_language == "en") && (movies.results[i].adult == false) && (movies.results[i].poster_path != nil)
        movie_name = movies.results[i].original_title
        movie_summary = movies.results[i].overview
        movie_poster = movies.results[i].poster_path
        movie_release = movies.results[i].release_date
        Movie.create(name: movie_name, poster: movie_poster, synopsis: movie_summary, release: movie_release)
        i += 1
        puts "creating #{movie_name}"
      else
        i += 1
      end
    end
    if page_number % 30 == 0
      puts "on #{page_number} of #{total_pages}"
      puts "waiting ..."
      sleep(30)
    end
    page_number += 1
  end
end

create_movies()

puts "beging seeding test data"

# puts "seeding movies"
# Movie.create(name: "Friday the 13th", poster: "posterurl", synopsis: "scary stuff")
# Movie.create(name: "The Conjuring", poster: "posterurl", synopsis: "really scary stuff")
# Movie.create(name: "The Nun", poster: "posterurl", synopsis: "very scary stuff")
# Movie.create(name: "The Ring", poster: "posterurl", synopsis: "funny scary stuff")

puts "seeding clubs"
Club.create(movie_id: 54, active: true)
Club.create(movie_id: 47, active: true)
Club.create(movie_id: 36, active: true)

puts "seeding users"
User.create(username: "SeaBass_1", email: "seb@seb", password: "secure", matched: true, club_id: 1, image: "https://i.imgur.com/z9IHE6c.jpg")
User.create(username: "CurseXO", email: "chris@chris", password: "secure", matched: true, club_id: 1, image: "https://i.imgur.com/15J2mom.jpg")
User.create(username: "ThunderB0X", email: "sabrina@sabrina", password: "secure", matched: true, club_id: 1, image: "https://i.imgur.com/K3OkLie.jpg")

User.create(username: "Organelle", email: "leszek@leszek", password: "secure", matched: true, club_id: 1, image: "https://i.imgur.com/bOZB0Cr.jpg")
User.create(username: "MurderPunch", email: "baby@baby", password: "secure", matched: true, club_id: 1, image: "https://i.imgur.com/dwIweoZ.jpg")
User.create(username: "DiabloFan", email: "panther@panther", password: "secure", matched: true, club_id: 1, image: "https://i.imgur.com/capjYyg.jpg")

User.create(username: "Nightmare", email: "sasha@sasha", password: "secure", matched: true, club_id: 2, image: "https://i.imgur.com/gqpYNzZ.jpg")
User.create(username: "ClownFan", email: "chichi@chichi", password: "secure", matched: true, club_id: 2, image: "https://i.imgur.com/T8vQiZn.jpg")
User.create(username: "Terrifier", email: "dude@dude", password: "secure", matched: true, club_id: 2, image: "https://i.imgur.com/wr7hnGt.jpg")

User.create(username: "ChuckyLover", email: "sasha@sasha", password: "secure", matched: true, club_id: 2, image: "https://i.imgur.com/6CK3rj2.jpg")
User.create(username: "MrsVoorhees", email: "chichi@chichi", password: "secure", matched: true, club_id: 2, image: "https://i.imgur.com/uKL4VNw.jpg")
User.create(username: "WitchKraft", email: "dude@dude", password: "secure", matched: true, club_id: 2, image: "https://i.imgur.com/BvYLhZ7.jpg")

User.create(username: "HorrorFan", email: "bentley@bentley", password: "secure", matched: true, club_id: 3, image: "https://i.imgur.com/YtgYx95.jpg")
User.create(username: "80sHorror", email: "spencer@spencer", password: "secure", matched: true, club_id: 3, image: "https://i.imgur.com/SXeS1Sy.jpg")
User.create(username: "Chiller", email: "tom@tom", password: "secure", matched: true, club_id: 3, image: "https://i.imgur.com/QwLEERZ.jpg")

User.create(username: "C_Keeper", email: "bozena@bozena", password: "secure", matched: true, club_id: 3, image: "https://i.imgur.com/dwIweoZ.jpg")
User.create(username: "Annabelle", email: "nicole@nicole", password: "secure", matched: true, club_id: 3, image: "https://i.imgur.com/gqpYNzZ.jpg")
User.create(username: "CampyHorror", email: "al@al", password: "secure", matched: true, club_id: 3, image: "https://i.imgur.com/wr7hnGt.jpg")

# puts "seeding ratings"
# Rating.create(user_id: 1, liked: true, movie_id: 1)
# Rating.create(user_id: 1, liked: true, movie_id: 2)
# Rating.create(user_id: 2, liked: false, movie_id: 1)
# Rating.create(user_id: 3, liked: false, movie_id: 1)
#
# Rating.create(user_id: 4, liked: true, movie_id: 2)
# Rating.create(user_id: 4, liked: true, movie_id: 3)
# Rating.create(user_id: 5, liked: false, movie_id: 2)
# Rating.create(user_id: 6, liked: false, movie_id: 2)
#
# Rating.create(user_id: 7, liked: true, movie_id: 3)
# Rating.create(user_id: 8, liked: false, movie_id: 3)
# Rating.create(user_id: 9, liked: false, movie_id: 3)
#
# Rating.create(user_id: 10, liked: true, movie_id: 4)
# Rating.create(user_id: 11, liked: false, movie_id: 4)
# Rating.create(user_id: 12, liked: false, movie_id: 4)
#
# Rating.create(user_id: 13, liked: true, movie_id: 1)
# Rating.create(user_id: 14, liked: false, movie_id: 1)
# Rating.create(user_id: 15, liked: false, movie_id: 1)

puts "seeding finished"

puts "Reminder: this is only test data"
