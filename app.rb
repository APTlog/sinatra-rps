require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do 
  moves = ["rock", "paper", "scissors"]

  @comp_move  = moves.sample
  if @comp_move  == "rock"
    @outcome = "tied!"
  elsif @comp_move == "scissors"
    @outcome = "won!"
  else 
    @outcome = "lost!"
  end

  erb(:zebra)

end


get("/paper") do
  moves = ["rock", "paper", "scissors"]

  @comp_move  = moves.sample
  if @comp_move  == "paper"
    @outcome = "tied!"
  elsif @comp_move == "scissors"
    @outcome = "lost!"
  else 
    @outcome = "won!"
  end
 erb(:giraffe)
end


get("/scissors") do
  moves = ["rock", "paper", "scissors"]

  @comp_move  = moves.sample
  if @comp_move  == "paper"
    @outcome = "won!"
  elsif @comp_move == "scissors"
    @outcome = "tied!"
  else 
    @outcome = "lost!"
  end
 erb(:scissors)
end
