require "json"
require "open-uri"

url = "https://tmdb.lewagon.com/movie/top_rated?api_key=%3Ctmdb.lewagon.com%3E"
movie_serialized = URI.open(url).read
result = JSON.parse(movie_serialized)

# sum = 1
# 5.times do
# result["results"].each do |x|
#   puts  title =  x["title"],
#   url_res = x["configuration"],
#  poster = x["poster_path"],
#   overview = x["overview"],
#   rating = x["vote_average"]
# end
#

# title = result["results"][sum += 1]["title"]
# url_res = result["results"][sum += 1]["configuration"]
# poster = result["results"][sum += 1]["poster_path"]
#  overview = result["results"][sum += 1]["overview"]
# vote_average = result["results"][sum += 1]["vote_average"]
# base = "https://image.tmdb.org/t/p/w500/"
# image_link = base + poster
# # puts image_link
# puts title
# puts overview
#puts title
# end
