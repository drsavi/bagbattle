# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seed.rb

puts "Seeding types..."

types = [
    {name: 'Planta', color: '#609C42'},
    {name: 'Fogo', color: '#F2673C'},
    {name: 'Voador', color: '#79B1B5'},
    {name: 'Normal', color: '#A6A6A6'},
    {name: 'Psiquico', color: '#CB67D0'},
    {name: 'Lutador', color: '#868278'},
    {name: 'Elétrico', color: '#DCB747'},
    {name: 'Agua', color: '#4592C4'},
    {name: 'Terra', color: '#A4633F'},
    {name: 'Inseto', color: '#94B34F'},
    {name: 'Aço', color: '#9EB7B8'},
    {name: 'Pedra', color: '#5F5E5B'},
    {name: 'Fada', color: '#E584A1'},
    {name: 'Som', color: '#8B7C56'},
    {name: 'Sombrio', color: '#2F2F87'},
    {name: 'Fantasma', color: '#624F8A'},
    {name: 'Sintético', color: '#908FA2'},
    {name: 'Cósmico', color: '#A686D9'},
    {name: 'Indefinido', color: '#333333'},
    {name: 'Dragão', color: '#B84651'},
    {name: 'Gelo', color: '#B4CBD9'},
    {name: 'Venenoso', color: '#57D96F'}
]

types.each do |creatingTypes|
Type.find_or_create_by(creatingTypes)

end
puts "Seeding types done."




puts "Seeding bagmons..."

def seed_image(number)
    "seed/#{number}.png"
end


bagmonlist = [
    {number: "001", name: "Voara", first_type_id: 1},
    {number: "002", name: "Azurara", first_type_id: 1, second_type_id: 3},
    {number: "003", name: "Ararazul", first_type_id: 3, second_type_id: 4, third_type_id: 5}    
]
  
bagmonlist.each do |attributes|
    puts "Bringing life to #{attributes[:name]}";
    attributes[:image] = seed_image(attributes[:number])
    Bagmon.find_or_create_by(attributes)
end

puts "Seeding bagmons done."







