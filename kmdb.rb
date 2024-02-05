# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

new_studio = Studio.new
new_studio ["name"] = "Warner Bros."
new_studio.save
puts new_studio.inspect

puts "There are #{Studio.all.count} studios"

studio1 = Studio.find_by ({"name" => "Warner Bros."})
puts studio1.inspect

new_movie1 = Movie.new
new_movie1 ["title"] = "Batman Begins"
new_movie1 ["year_released"] = 2005
new_movie1 ["rated"] = "PG-13"
new_movie1 ["studio_id"] = studio1 ["id"]
new_movie1.save
puts new_movie1.inspect

new_movie2 = Movie.new
new_movie2 ["title"] = "The Dark Knight"
new_movie2 ["year_released"] = 2008
new_movie2 ["rated"] = "PG-13"
new_movie2 ["studio_id"] = studio1 ["id"]
new_movie2.save
puts new_movie2.inspect

new_movie3 = Movie.new
new_movie3 ["title"] = "The Dark Knight Rises"
new_movie3 ["year_released"] = 2012
new_movie3 ["rated"] = "PG-13"
new_movie3 ["studio_id"] = studio1 ["id"]
new_movie3.save
puts new_movie3.inspect

puts "There are #{Movie.all.count} movies"

new_actor1 = Actor.new
new_actor1 ["name"] = "Christian Bale"
new_actor1.save
puts new_actor1.inspect

new_actor2 = Actor.new
new_actor2 ["name"] = "Michael Caine"
new_actor2.save
puts new_actor2.inspect

new_actor3 = Actor.new
new_actor3 ["name"] = "Liam Neeson"
new_actor3.save
puts new_actor3.inspect

new_actor4 = Actor.new
new_actor4 ["name"] = "Katie Holmes"
new_actor4.save
puts new_actor4.inspect

new_actor5 = Actor.new
new_actor5 ["name"] = "Gary Oldman"
new_actor5.save
puts new_actor5.inspect

new_actor6 = Actor.new
new_actor6 ["name"] = "Heath Ledger"
new_actor6.save
puts new_actor6.inspect

new_actor7 = Actor.new
new_actor7 ["name"] = "Aaron Eckhart"
new_actor7.save
puts new_actor7.inspect

new_actor8 = Actor.new
new_actor8 ["name"] = "Maggie Gyllenhaal"
new_actor8.save
puts new_actor8.inspect

new_actor9 = Actor.new
new_actor9 ["name"] = "Tom Hardy"
new_actor9.save
puts new_actor9.inspect

new_actor10 = Actor.new
new_actor10 ["name"] = "Joseph Gordon-Levitt"
new_actor10.save
puts new_actor10.inspect

new_actor11 = Actor.new
new_actor11 ["name"] = "Anne Hathaway"
new_actor11.save
puts new_actor11.inspect

puts "There are #{Actor.all.count} actors"

movie1 = Movie.find_by ({"title" => "Batman Begins"})
puts movie1.inspect

actor_christian = Actor.find_by ({"name" => "Christian Bale"})
puts actor_christian.inspect

new_role1 = Role.new
new_role1 ["character_name"] = "Bruce Wayne"
new_role1 ["movie_id"] = movie1 ["id"]
new_role1 ["actor_id"] = actor_christian ["id"]
new_role1.save
puts new_role1.inspect

actor_michael = Actor.find_by ({"name" => "Michael Caine"})
puts actor_michael.inspect

new_role2 = Role.new
new_role2 ["character_name"] = "Alfred"
new_role2 ["movie_id"] = movie1 ["id"]
new_role2 ["actor_id"] = actor_michael ["id"]
new_role2.save
puts new_role2.inspect

actor_liam = Actor.find_by ({"name" => "Liam Neeson"})
puts actor_liam.inspect

new_role3 = Role.new
new_role3 ["character_name"] = "Ra's Al Ghul"
new_role3 ["movie_id"] = movie1 ["id"]
new_role3 ["actor_id"] = actor_michael ["id"]
new_role3.save
puts new_role3.inspect

actor_katie = Actor.find_by ({"name" => "Katie Holmes"})
puts actor_katie.inspect

new_role4 = Role.new
new_role4 ["character_name"] = "Rachel Dawes"
new_role4 ["movie_id"] = movie1 ["id"]
new_role4 ["actor_id"] = actor_katie ["id"]
new_role4.save
puts new_role4.inspect

actor_gary = Actor.find_by ({"name" => "Gary Oldman"})
puts actor_gary.inspect

new_role5 = Role.new
new_role5 ["character_name"] = "Commissioner Gordon"
new_role5 ["movie_id"] = movie1 ["id"]
new_role5 ["actor_id"] = actor_gary ["id"]
new_role5.save
puts new_role4.inspect

movie2 = Movie.find_by ({"title" => "The Dark Knight"})
puts movie2.inspect

new_role6 = Role.new
new_role6 ["character_name"] = "Bruce Wayne"
new_role6 ["movie_id"] = new_movie2 ["id"]
new_role6 ["actor_id"] = actor_christian ["id"]
new_role6.save
puts new_role6.inspect

actor_heath = Actor.find_by ({"name" => "Heath Ledger"})
puts actor_heath.inspect

new_role7 = Role.new
new_role7 ["character_name"] = "Joker"
new_role7 ["movie_id"] = movie2 ["id"]
new_role7 ["actor_id"] = actor_heath ["id"]
new_role7.save
puts new_role7.inspect

actor_aaron = Actor.find_by ({"name" => "Aaron Eckhart"})
puts actor_aaron.inspect

new_role8 = Role.new
new_role8 ["character_name"] = "Harvey Dent"
new_role8 ["movie_id"] = movie2 ["id"]
new_role8 ["actor_id"] = actor_aaron["id"]
new_role8.save
puts new_role8.inspect

actor_michael = Actor.find_by ({"name" => "Michael Caine"})
puts actor_michael.inspect

new_role9 = Role.new
new_role9 ["character_name"] = "Alfred"
new_role9 ["movie_id"] = movie2 ["id"]
new_role9 ["actor_id"] = actor_michael ["id"]
new_role9.save
puts new_role9.inspect

actor_maggie = Actor.find_by ({"name" => "Maggie Gyllenhaal"})
puts actor_maggie.inspect

new_role10 = Role.new
new_role10 ["character_name"] = "Rachel Dawes"
new_role10 ["movie_id"] = movie2 ["id"]
new_role10 ["actor_id"] = actor_maggie ["id"]
new_role10.save
puts new_role10.inspect

movie3 = Movie.find_by ({"title" => "The Dark Knight Rises"})
puts movie2.inspect

actor_christian = Actor.find_by ({"name" => "Christian Bale"})
puts actor_christian.inspect

new_role11 = Role.new
new_role11 ["character_name"] = "Bruce Wayne"
new_role11 ["movie_id"] = movie3 ["id"]
new_role11 ["actor_id"] = actor_christian ["id"]
new_role11.save
puts new_role11.inspect

actor_gary = Actor.find_by ({"name" => "Gary Oldman"})
puts actor_gary.inspect

new_role12 = Role.new
new_role12 ["character_name"] = "Commissioner Gordon"
new_role12 ["movie_id"] = movie3 ["id"]
new_role12 ["actor_id"] = actor_gary ["id"]
new_role12.save
puts new_role12.inspect

actor_tom = Actor.find_by ({"name" => "Tom Hardy"})
puts actor_tom.inspect

new_role12 = Role.new
new_role12 ["character_name"] = "Bane"
new_role12 ["movie_id"] = movie3 ["id"]
new_role12 ["actor_id"] = actor_tom ["id"]
new_role12.save
puts new_role12.inspect

actor_joseph = Actor.find_by ({"name" => "Joseph Gordon-Levitt"})
puts actor_joseph.inspect

new_role13 = Role.new
new_role13 ["character_name"] = "John Blake"
new_role13 ["movie_id"] = movie3 ["id"]
new_role13 ["actor_id"] = actor_joseph ["id"]
new_role13.save
puts new_role13.inspect

actor_anne = Actor.find_by ({"name" => "Anne Hathaway"})
puts actor_anne.inspect

new_role14 = Role.new
new_role14 ["character_name"] = "Selina Kyle"
new_role14 ["movie_id"] = movie3 ["id"]
new_role14 ["actor_id"] = actor_anne ["id"]
new_role14.save
puts new_role14.inspect

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts "XXX"

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts "YYY"

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
