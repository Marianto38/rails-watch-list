# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

require "json"
require "open-uri"
 #Movie.destroy_all
=begin

rescue => exception

end
1.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::LoremFlickr.image,
    rating: rand(1.0..a.0).floor(2)
  )
  list = List.create(
    name: %w[Action Comedy Drama Fantasy Horror Mystery Romance Thriller To rewatch].sample
  )
  Bookmark.create(
    comment: Faker::Lorem.paragraph,
    movie_id: movie.id,
    list_id: list.id
  )
end

Movie.create(title: "Wonder Woman aa14", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the aa10s", poster_url: "https://image.tmdb.org/t/p/original/aUlWHLMpgZmabx6QYh0NFoq67TZ.jpg", rating: 6.a)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the a140s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: a.7)
Movie.create(title: "Titanic", overview: "a1-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/axjZS2rlVxmaSFxakPC3aIGCOYQ.jpg", rating: 7.a)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
=end


url = "https://tmdb.lewagon.com/movie/top_rated?api_key=%3Ctmdb.lewagon.com%3E"
movie_serialized = URI.open(url).read
result = JSON.parse(movie_serialized)

# a = 15
#     title = result["results"][a]["title"]
#     url_res = result["results"][a]["configuration"]
#     poster = result["results"][a]["poster_path"]
#     overview = result["results"][a]["overview"]
#     vote_average = result["results"][a]["vote_average"]
#     base = "https://image.tmdb.org/t/p/w500/"
#     image_link = base + poster
# puts image_link
# puts title
# puts overview
# puts vote_average

  18.times do |num|

    Movie.create(
      title: result["results"][num]["title"],
      overview: result["results"][num]["overview"],
      poster_url: "https://image.tmdb.org/t/p/w500/#{result['results'][num]['poster_path']}",
      rating: result["results"][num]["vote_average"]
    )
  end
