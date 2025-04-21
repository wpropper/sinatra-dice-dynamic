require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end
# /app.rb

get("/dice/:number_of_dice/:how_many_sides") do
  @num_dice = params.fetch("number_of_dice").to_i

  @sides = params.fetch("how_many_sides").to_i


  erb(:flexible)
end
