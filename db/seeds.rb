# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

happy_gilmore = Movie.find_by(title: "Happy Gilmore")
billy_madison = Movie.create(title: "Billy Madison", genre: "Comedy")
wedding_singer = Movie.create(title: "The Wedding Singer", genre: "Comedy")
ace_ventura = Movie.create(title: "Ace Ventura", genre: "Comedy")
cable_guy = Movie.create(title: "The Cable Guy", genre: "Comedy")
fletch = Movie.create(title: "Fletch", genre: "Comedy")
three_amigos = Movie.create(title: "The Three Amigos", genre: "Comedy")
vacation = Movie.create(title: "Vacation", genre: "Comedy")
caddyshack = Movie.create(title: "Caddyshack", genre: "Comedy")
groundhog_day = Movie.create(title: "Groundhog Day", genre: "Comedy")

adam = Actor.create(name: "Adam Sandler", age: 51)
jim = Actor.create(name: "Jim Carrey", age: 56)
chevy = Actor.create(name: "Chevy Chase", age: 74)
steve = Actor.create(name: "Steve Martin", age: 72)
bill = Actor.create(name: "Bill Murray", age: 67)
julie = Actor.create(name: "Julie Bowen", age: 48)
drew = Actor.create(name: "Drew Barrymore", age: 43)
martin = Actor.create(name: "Martin Short", age: 68)

happy_gilmore.actors << julie
billy_madison.actors << adam
wedding_singer.actors << adam
wedding_singer.actors << drew
ace_ventura.actors << jim
cable_guy.actors << jim
fletch.actors << chevy
three_amigos.actors << chevy
three_amigos.actors << steve
three_amigos.actors << martin
vacation.actors << chevy
caddyshack.actors << chevy
caddyshack.actors << bill
groundhog_day.actors << bill