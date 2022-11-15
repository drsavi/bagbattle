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
    {name: 'Psíquico', color: '#CB67D0'},
    {name: 'Lutador', color: '#868278'},
    {name: 'Elétrico', color: '#DCB747'},
    {name: 'Água', color: '#4592C4'},
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
    {number: "003", name: "Ararazul", first_type_id: 1, second_type_id: 3},
    {number: "004", name: "Pequemico", first_type_id: 2},
    {number: "005", name: "Micorado", first_type_id: 2},
    {number: "006", name: "Douraleão", first_type_id: 2, second_type_id: 11},
    {number: "007", name: "Capi", first_type_id: 8},
    {number: "008", name: "Varacapi", first_type_id: 8},
    {number: "009", name: "Capilorde", first_type_id: 8, second_type_id: 12},
    {number: "010", name: "Tamanduí", first_type_id: 9},
    {number: "011", name: "Tamirim", first_type_id: 9},
    {number: "012", name: "Lutanduá", first_type_id: 9, second_type_id: 6},
    {number: "013", name: "Caralata", first_type_id: 4},
    {number: "014", name: "Caramelo", first_type_id: 4},
    {number: "015", name: "Viramelo", first_type_id: 4, second_type_id: 5},
    {number: "016", name: "Iaçá", first_type_id: 1},
    {number: "017", name: "Açaíne", first_type_id: 1, second_type_id: 6},
    {number: "018", name: "Naná", first_type_id: 1},
    {number: "019", name: "Guaranin", first_type_id: 1, second_type_id: 5},
    {number: "020", name: "Beboto", first_type_id: 8},
    {number: "021", name: "Bodutor", first_type_id: 8, second_type_id: 5},
    {number: "022", name: "Laguito", first_type_id: 10},
    {number: "023", name: "Durito", first_type_id: 10},
    {number: "024", name: "Bansquito", first_type_id: 10, second_type_id: 8, third_type_id:	3},
    {number: "025", name: "Chanin", first_type_id: 4},
    {number: "026", name: "Fofilho", first_type_id: 1},
    {number: "027", name: "Slicurau", first_type_id: 1},
    {number: "028", name: "Pamonhana", first_type_id: 1, second_type_id: 13},
    {number: "029", name: "Jondi", first_type_id: 9, second_type_id: 3},
    {number: "030", name: "Bojarro", first_type_id: 9, second_type_id: 3},
    {number: "031", name: "Benja", first_type_id: 17, second_type_id: 7},
    {number: "032", name: "Benjamais", first_type_id: 17, second_type_id: 7},
    {number: "033", name: "Benjamuitos", first_type_id: 17, second_type_id: 7, third_type_id:	2},
    {number: "034", name: "Pondi", first_type_id: 13},
    {number: "035", name: "Diquejos", first_type_id: 13},
    {number: "036", name: "Besarela", first_type_id: 10, second_type_id: 3},
    {number: "037", name: "Besercules", first_type_id: 10, second_type_id: 11, third_type_id:	3},
    {number: "038", name: "Julicac", first_type_id: 1, second_type_id: 9},
    {number: "039", name: "Caquilete", first_type_id: 1, second_type_id: 9},
    {number: "040", name: "Grafé", first_type_id: 1},
    {number: "041", name: "Torrafé", first_type_id: 1, second_type_id: 2},
    {number: "042", name: "Cafasma", first_type_id: 1, second_type_id: 2, third_type_id:	16},
    {number: "043", name: "Duratista", first_type_id: 12},
    {number: "044", name: "Dutrino", first_type_id: 12},
    {number: "045", name: "Duraíba", first_type_id: 12, second_type_id: 5},
    {number: "046", name: "Zégoti", first_type_id: 13},
    {number: "047", name: "Pfizegator", first_type_id: 8},
    {number: "048", name: "Jacarevac", first_type_id: 8},
    {number: "049", name: "Astracaré", first_type_id: 8},
    {number: "050", name: "Colote", first_type_id: 17, second_type_id: 13},
    {number: "051", name: "Cajaça", first_type_id: 17, second_type_id: 13},
    {number: "052", name: "Véiguerrero", first_type_id: 17, second_type_id: 13, third_type_id:	6},
    {number: "053", name: "Biscolacha", first_type_id: 4, second_type_id: 6},
    {number: "054", name: "Bolachoito", first_type_id: 4, second_type_id: 6},
    {number: "055", name: "Ratinrrato", first_type_id: 7, second_type_id: 8},
    {number: "056", name: "Ratobum", first_type_id: 7, second_type_id: 8},
    {number: "057", name: "Cuscute", first_type_id: 1},
    {number: "058", name: "Monstruz", first_type_id: 1},
    {number: "059", name: "Querokero", first_type_id: 3},
    {number: "060", name: "Querocaos", first_type_id: 3, second_type_id: 15},
    {number: "061", name: "Bemtevi", first_type_id: 3, second_type_id: 14},
    {number: "062", name: "Bemteverei", first_type_id: 3, second_type_id: 14},
    {number: "063", name: "Bemtevejo", first_type_id: 3, second_type_id: 14},
    {number: "064", name: "Pregaiana", first_type_id: 16, second_type_id: 3},
    {number: "065", name: "Largata", first_type_id: 10},
    {number: "066", name: "Casuleta", first_type_id: 10},
    {number: "067", name: "Borboleto", first_type_id: 10, second_type_id: 3},
    {number: "068", name: "Brabuleta", first_type_id: 10, second_type_id: 3},
    {number: "069", name: "Uvisier", first_type_id: 1, second_type_id: 7},
    {number: "070", name: "Sansoelho", first_type_id: 13, second_type_id: 3},
    {number: "071", name: "Coxita", first_type_id: 13, second_type_id: 6},
    {number: "072", name: "Pasfeira", first_type_id: 13, second_type_id: 2},
    {number: "073", name: "Caldicana", first_type_id: 16, second_type_id: 1},
    {number: "074", name: "Pequetixa", first_type_id: 20, second_type_id: 1},
    {number: "075", name: "Calanqui", first_type_id: 20, second_type_id: 1},
    {number: "076", name: "Peteiú", first_type_id: 20, second_type_id: 1},
    {number: "077", name: "Bezeta", first_type_id: 4},
    {number: "078", name: "Carapreta", first_type_id: 4},
    {number: "079", name: "Bezela", first_type_id: 4},
    {number: "080", name: "Vacarela", first_type_id: 4},
    {number: "081", name: "Capritidos", first_type_id: 4, second_type_id: 13},
    {number: "082", name: "Sapoeira", first_type_id: 6, second_type_id: 22},
    {number: "083", name: "Jiusapo", first_type_id: 6, second_type_id: 22},
    {number: "084", name: "Capagaz", first_type_id: 16, second_type_id: 22},
    {number: "085", name: "Carcego", first_type_id: 3, second_type_id: 15, third_type_id:	14},
    {number: "086", name: "Morganca", first_type_id: 3, second_type_id: 15, third_type_id:	14},
    {number: "087", name: "Bebolvo", first_type_id: 8, second_type_id: 12},
    {number: "088", name: "Octeddy", first_type_id: 8, second_type_id: 14},
    {number: "089", name: "Tazum", first_type_id: 17, second_type_id: 3},
    {number: "090", name: "Montazo", first_type_id: 17, second_type_id: 3},
    {number: "091", name: "Fantazo", first_type_id: 17, second_type_id: 3, third_type_id:	16},
    {number: "092", name: "Feijote", first_type_id: 16, second_type_id: 21},
    {number: "093", name: "Banloira", first_type_id: 16, second_type_id: 8},
    {number: "094", name: "Mamuna", first_type_id: 1, second_type_id: 22},
    {number: "095", name: "Mantrio", first_type_id: 1, second_type_id: 22},
    {number: "096", name: "Massinas", first_type_id: 1, second_type_id: 22, third_type_id:	14},
    {number: "097", name: "Jubará", first_type_id: 4, second_type_id: 3},
    {number: "098", name: "Josoré", first_type_id: 4, second_type_id: 3},
    {number: "099", name: "Fixuxo", first_type_id: 4},
    {number: "100", name: "Txucão", first_type_id: 4},
    {number: "101", name: "Chifíbio", first_type_id: 1, second_type_id: 22},
    {number: "102", name: "Saparrão", first_type_id: 1, second_type_id: 22},
    {number: "103", name: "Chimarrã", first_type_id: 1, second_type_id: 22},
    {number: "104", name: "Terereca", first_type_id: 1, second_type_id: 22, third_type_id:	21},
    {number: "105", name: "Sin", first_type_id: 5},
    {number: "106", name: "Salabin", first_type_id: 5},
    {number: "107", name: "Ziriguidum", first_type_id: 5, second_type_id: 14},
    {number: "108", name: "Elecbol", first_type_id: 17, second_type_id: 7},
    {number: "109", name: "Brazorb", first_type_id: 17, second_type_id: 7},
    {number: "110", name: "Doncorvo", first_type_id: 8, second_type_id: 3},
    {number: "111", name: "Canarin", first_type_id: 4, second_type_id: 3},
    {number: "112", name: "Pistolin", first_type_id: 6, second_type_id: 3},
    {number: "113", name: "Tatuleco", first_type_id: 9, second_type_id: 12},
    {number: "114", name: "Tatunastra", first_type_id: 9, second_type_id: 12},
    {number: "115", name: "Tupin", first_type_id: 3, second_type_id: 4},
    {number: "116", name: "Volpiniquin", first_type_id: 3, second_type_id: 7},
    {number: "117", name: "Floriniquin", first_type_id: 3, second_type_id: 1},
    {number: "118", name: "Hidroniquin", first_type_id: 3, second_type_id: 8},
    {number: "119", name: "Brasaniquin", first_type_id: 3, second_type_id: 2},
    {number: "120", name: "Titaniquin", first_type_id: 3, second_type_id: 11},
    {number: "121", name: "Urumengo", first_type_id: 3, second_type_id: 15},
    {number: "122", name: "Cebrutius", first_type_id: 17, second_type_id: 11, third_type_id:	14},
    {number: "123", name: "Diguidim", first_type_id: 17, second_type_id: 11, third_type_id:	14},
    {number: "124", name: "Orcantos", first_type_id: 8, second_type_id: 21},
    {number: "125", name: "Pormeiras", first_type_id: 1, second_type_id: 9},
    {number: "126", name: "Santaulo", first_type_id: 5, second_type_id: 13},
    {number: "127", name: "Mosquião", first_type_id: 3, second_type_id: 11},
    {number: "128", name: "Peixuanã", first_type_id: 8},
    {number: "129", name: "Pirarupeixe", first_type_id: 8, second_type_id: 15},
    {number: "130", name: "Imperátilus", first_type_id: 20, second_type_id: 7, third_type_id:	14},
    {number: "131", name: "Irritator", first_type_id: 12, second_type_id: 8},
    {number: "132", name: "Celeconda", first_type_id: 1},
    {number: "133", name: "Suculeste", first_type_id: 1, second_type_id: 5},
    {number: "134", name: "Ursocotom", first_type_id: 4},
    {number: "135", name: "Araupinha", first_type_id: 1},
    {number: "136", name: "Araubroto", first_type_id: 1},
    {number: "137", name: "Arauforte", first_type_id: 1, second_type_id: 6},
    {number: "138", name: "Xunave", first_type_id: 18, second_type_id: 11},
    {number: "139", name: "Cristaluna", first_type_id: 18, second_type_id: 13},
    {number: "140", name: "Sereiara", first_type_id: 8, second_type_id: 5, third_type_id:	14},
    {number: "141", name: "Piropira", first_type_id: 1, second_type_id: 2},
    {number: "142", name: "Sacerê", first_type_id: 3, second_type_id: 5},
    {number: "143", name: "Cobratá", first_type_id: 2, second_type_id: 15},
    {number: "144", name: "Mulantã", first_type_id: 2, second_type_id: 16},
    {number: "145", name: "Mapinguá", first_type_id: 6, second_type_id: 9},
    {number: "146", name: "Loguará", first_type_id: 9, second_type_id: 15},
    {number: "147", name: "Iaguará", first_type_id: 11, second_type_id: 15},
    {number: "148", name: "Velopya", first_type_id: 3, second_type_id: 15},
    {number: "149", name: "Gambiarros", first_type_id: 17, second_type_id: 19},
    {number: "150", name: "Bilu", first_type_id: 18, second_type_id: 5},
    {number: "151", name: "Bivaldo", first_type_id: 18, second_type_id: 5},  
]
  
bagmonlist.each do |attributes|
    puts "Bringing life to #{attributes[:name]}";
    attributes[:image] = seed_image(attributes[:number])
    Bagmon.find_or_create_by(attributes)
end

puts "Seeding bagmons done."









