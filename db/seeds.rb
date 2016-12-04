# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
seydliz = Ship.create({name: "Seydlitz", nationality: "German", ship_class: "Battlecruiser"})
lion = Ship.create({name: "Lion", nationality: "British", ship_class: "Battlecruiser"})
black_prince = Ship.create({name: "Black Prince", nationality: "British", ship_class: "Armored Cruiser"})
scharnhorst = Ship.create({name: "Scharnhorst", nationality: "German", ship_class: "Armored Cruiser"})

Armament.create({ship_id: seydlitz.id, turrets: 5, caliber: 11, guns: 10, muzzle_velocity: 895, penetration: 604})
Armament.create({ship_id: lion.id, turrets: 4, caliber: 13.5, guns: 8, muzzle_velocity: 787, penetration: 439})
