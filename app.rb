require "sinatra"
require "sinatra/reloader"

moves = ["rock", "paper", "scissors"]
results = ["won", "lost", "tied"]

get("/") do
  erb(:rules)
end

get("/rock") do
  i = rand(0..2)
  @computer = moves[i]
  if i == 0
    @outcome = results[2]
  elsif i == 1
    @outcome = results[1]
  else
    @outcome = results[0]
  end

  erb(:rock)
end

get("/paper") do
  i = rand(0..2)
  @computer = moves[i]
  if i == 0
    @outcome = results[0]
  elsif i == 1
    @outcome = results[2]
  else
    @outcome = results[1]
  end

  erb(:paper)
end

get("/scissors") do
  i = rand(0..2)
  @computer = moves[i]
  if i == 0
    @outcome = results[1]
  elsif i == 1
    @outcome = results[0]
  else
    @outcome = results[2]
  end

  erb(:scissors)
end
