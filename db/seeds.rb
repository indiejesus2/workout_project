# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.create(name: "John Malkovich", weight: 205, goal_weight: 185, note: "Work Harder")
Client.create(name: "John Travolta", weight: 245, goal_weight: 165, note: "Fat body")
Client.create(name: "Emilio Estavez", weight: 165, goal_weight: 185, note: "Gain muscle")

Trainer.create(username: "Celeste", password: "password")
Trainer.create(username: "Dan", password: "password")
Trainer.create(username: "Michael", password: "password")