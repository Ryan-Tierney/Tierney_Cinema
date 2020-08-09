# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Movie.create(title:"The Karate Kid", cost: 3, rating: "PG")
Movie.create(title:"Batman Forever", cost: 3, rating: "PG")
Movie.create(title:"Avengers", cost: 3, rating: "PG")
Movie.create(title:"Friday the 13th", cost: 3, rating: "R")
Movie.create(title:"Elf", cost: 3, rating: "PG")
Movie.create(title:"Mulan", cost: 3, rating: "PG")
Movie.create(title:"Lilo and Stitch", cost: 3, rating: "PG")
Movie.create(title:"The Longest Yard", cost: 3, rating: "PG13")
Movie.create(title:"Pokemon", cost: 3, rating: "PG")
Movie.create(title:"Matilda", cost: 3, rating: "PG", summary: "A young girl discovers she has telekenesis and takes revenge on those who have wronged her")
Movie.create(title:"Wonder Woman", cost: 3, rating: "PG")
Movie.create(title:"Inception" , cost: 3, rating: "PG13")
Movie.create(title:"Lion King" , cost: 3, rating: "PG", summary: "Hamlet with Lions")
Movie.create(title:"Toy Story" , cost: 3, rating: "PG", summary: "Toys traumatize a young child")
Movie.create(title:"Aladdin" , cost: 3, rating: "PG")

Review.create(title: "That Poor Child", content: "Them toys need to leave that poor boy alone")
Review.create(title: "That Poor Child", content: "Them grownups need to leave that poor girl alone")