# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name:"luke",email:"luke@dbc.com",password:"lop")

# 10.times do
#   User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password: Faker::Internet.password)
# end


original = Variety.create(name: "Original", image: "/assets/original.png")
tropical = Variety.create(name: "Tropical", image: "/assets/tropical.png")
wild_berry = Variety.create(name: "'Wild Berry'", image: "/assets/wild_berry.png")
desserts = Variety.create(name: "Desserts", image: "/assets/desserts.png")
darkside = Variety.create(name: "Darkside", image: "/assets/darkside.png")

original.flavors.create(name: "grape", image: "/assets/oGrape.png")
original.flavors.create(name: "lemon", image: "/assets/oGrape.png")
original.flavors.create(name: "orange", image: "/assets/oGrape.png")
original.flavors.create(name: "'green apple'", image: "/assets/oGrape.png")
original.flavors.create(name: "strawberry", image: "/assets/oGrape.png")

tropical.flavors.create(name: "'banana berry'", image: "/assets/oGrape.png")
tropical.flavors.create(name: "'kiwi lime'", image: "/assets/oGrape.png")
tropical.flavors.create(name: "'mango tangelo'", image: "/assets/oGrape.png")
tropical.flavors.create(name: "'pineapple passion fruit'", image: "/assets/oGrape.png")
tropical.flavors.create(name: "'strawberry starfruit'", image: "/assets/oGrape.png")

wild_berry.flavors.create(name: "'berry punch'", image: "/assets/oGrape.png")
wild_berry.flavors.create(name: "'melon berry'", image: "/assets/oGrape.png")
wild_berry.flavors.create(name: "raspberry", image: "/assets/oGrape.png")
wild_berry.flavors.create(name: "strawberry", image: "/assets/oGrape.png")
wild_berry.flavors.create(name: "'wild cherry'", image: "/assets/oGrape.png")

desserts.flavors.create(name: "'raspberry sorbet'", image: "/assets/oGrape.png")
desserts.flavors.create(name: "'blueberry tart'", image: "/assets/oGrape.png")
desserts.flavors.create(name: "'key lime pie'", image: "/assets/oGrape.png")
desserts.flavors.create(name: "'orange creme'", image: "/assets/oGrape.png")
desserts.flavors.create(name: "'strawberry milkshake'", image: "/assets/oGrape.png")

darkside.flavors.create(name: "pomengranate", image: "/assets/oGrape.png")
darkside.flavors.create(name: "'forbidden fruit'", image: "/assets/oGrape.png")
darkside.flavors.create(name: "'midnight lime'", image: "/assets/oGrape.png")
darkside.flavors.create(name: "'dark berry'", image: "/assets/oGrape.png")
darkside.flavors.create(name: "'blood orange'", image: "/assets/oGrape.png")