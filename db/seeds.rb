# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "beging seeding test data"

puts "seeding movies"
Movie.create(name: "Friday the 13th", poster: "posterurl", synopsis: "scary stuff")
Movie.create(name: "The Conjuring", poster: "posterurl", synopsis: "really scary stuff")
Movie.create(name: "The Nun", poster: "posterurl", synopsis: "very scary stuff")
Movie.create(name: "The Ring", poster: "posterurl", synopsis: "funny scary stuff")

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

# Tmdb::Genre.movie_list
#
# config = Tmdb::Configuration.get
#
# puts "TMDB start"
#
# # Response
# Tmdb::Configuration {
#          :images => Tmdb::Configuration {
#                :base_url => "http://image.tmdb.org/t/p/",
#         :secure_base_url => "https://image.tmdb.org/t/p/",
#          :backdrop_sizes => [
#             [0] "w300",
#             [1] "w780",
#             [2] "w1280",
#             [3] "original"
#         ],
#              :logo_sizes => [
#             [0] "w45",
#             [1] "w92",
#             [2] "w154",
#             [3] "w185",
#             [4] "w300",
#             [5] "w500",
#             [6] "original"
#         ],
#            :poster_sizes => [
#             [0] "w92",
#             [1] "w154",
#             [2] "w185",
#             [3] "w342",
#             [4] "w500",
#             [5] "w780",
#             [6] "original"
#         ],
#           :profile_sizes => [
#             [0] "w45",
#             [1] "w185",
#             [2] "h632",
#             [3] "original"
#         ],
#             :still_sizes => [
#             [0] "w92",
#             [1] "w185",
#             [2] "w300",
#             [3] "original"
#         ]
#     },
#     :change_keys => [
#         [ 0] "adult",
#         [ 1] "air_date",
#         [ 2] "also_known_as",
#         [ 3] "alternative_titles",
#         [ 4] "biography",
#         [ 5] "birthday",
#         [ 6] "budget",
#         [ 7] "cast",
#         [ 8] "certifications",
#         [ 9] "character_names",
#         [10] "created_by",
#         [11] "crew",
#         [12] "deathday",
#         [13] "episode",
#         [14] "episode_number",
#         [15] "episode_run_time",
#         [16] "freebase_id",
#         [17] "freebase_mid",
#         [18] "general",
#         [19] "genres",
#         [20] "guest_stars",
#         [21] "homepage",
#         [22] "images",
#         [23] "imdb_id",
#         [24] "languages",
#         [25] "name",
#         [26] "network",
#         [27] "origin_country",
#         [28] "original_name",
#         [29] "original_title",
#         [30] "overview",
#         [31] "parts",
#         [32] "place_of_birth",
#         [33] "plot_keywords",
#         [34] "production_code",
#         [35] "production_companies",
#         [36] "production_countries",
#         [37] "releases",
#         [38] "revenue",
#         [39] "runtime",
#         [40] "season",
#         [41] "season_number",
#         [42] "season_regular",
#         [43] "spoken_languages",
#         [44] "status",
#         [45] "tagline",
#         [46] "title",
#         [47] "translations",
#         [48] "tvdb_id",
#         [49] "tvrage_id",
#         [50] "type",
#         [51] "video",
#         [52] "videos"
#     ]
# }
#
# # Retrieve images base url example
# base_url = config.images.base_url
