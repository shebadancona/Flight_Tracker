# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Passenger.delete_all
a = Passenger.create(name:"Josh", status:"Flight Attendant")
b = Passenger.create(name:"Helen",status:"Pilot")
c = Passenger.create(name:"Sarah",status:"Flight Attendant")
Airline.find(1).passengers << [a,b,c]

d = Crew.create(name:"Christina", title:"Manager", airline_id:1)
e = Crew.create(name:"Heidi", title:"Stewardess", airline_id:2)
f = Crew.create(name:"Pierre", title:"Steward", airline_id:3)

Flight.find(1).crews << [d,e,f]
