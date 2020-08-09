# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Movie.create(title:"The Karate Kid", rating: "PG")
Movie.create(title:"Batman Forever", rating: "PG")
Movie.create(title:"Avengers", rating: "PG")
Movie.create(title:"Friday the 13th", rating: "R")
Movie.create(title:"Elf", rating: "PG")
Movie.create(title:"Mulan", rating: "PG")
Movie.create(title:"Lilo and Stitch", rating: "PG")
Movie.create(title:"The Longest Yard", rating: "PG13")
Movie.create(title:"Pokemon", rating: "PG")
Movie.create(title:"Matilda", rating: "PG") 
Movie.create(title:"Wonder Woman",  rating: "PG")
Movie.create(title:"Inception", rating: "PG13")
Movie.create(title:"Lion King", rating: "PG") 
Movie.create(title:"Toy Story", rating: "PG") 
Movie.create(title:"Aladdin", rating: "PG")

Review.create(title: "That Poor Child", content: "Them toys need to leave that poor boy alone")
Review.create(title: "That Poor Child", content: "Them grownups need to leave that poor girl alone")