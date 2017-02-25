# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rndm = rand(1..10) #random number of types

rndm.each do |i| #create rndm teams
  i = i.to_s
  Type.create(name:i)
end

for i in 1..rndm*22 do #create rndm*22 players (ideally 22 for each team)
  i = i.to_s
  Note.create(title: 'Due'+i, text: 'blah'+i, type_id: Type.find(rand(1..rndm)).id)
end