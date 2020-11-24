# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

recipe1 = Recipe.create!(name: "Tarte chèvre miel", difficulty: "très facile", price: "bon marché", time: "20 minutes", diet: "végétarien", content: "1) Piquer la pâte brisée avec une fourchette et l'enfourner à 200°C, thermostat 6-7, environ 10 min.
2) Pendant ce temps, couper l'oignon en dés et le faire suer à l'huile d'olive dans une poêle.
3) Quand les oignons ont bien blondis, y ajouter la crème.
4) Lorsque la pâte commence à dorer, la sortir du four et verser dessus les oignons à la crème.
5) Déposer sur la tarte les rondelles de chèvre.
6) Parsemer de gruyère surtout sur les bords de la pâte pour éviter qu'elle ne se dessèche.
7) Verser le miel en ruban sur toute la tarte.
8) Enfourner à nouveau le temps de gratiner le fromage.")

file1 = URI.open("https://res.cloudinary.com/dogomm21h/image/upload/v1606232113/ofwvigvhy76zijzopwvy.jpg")
recipe1.photo.attach(io: file1, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe1.save!

recipe2 = Recipe.create!(name: "Bricks au thon", difficulty: "très facile", price: "bon marché", time: "25 minutes", diet: "carnivore", content: "1) Faire cuire les œufs dans l'eau bouillante pour qu'ils deviennent durs (9 minutes).
2) Écailler les œufs, les écraser avec une fourchette et les mélanger avec le persil et les oignons.
3) Ajouter le thon émietté et le jus du citron pressé.
4) Poivrer à votre convenance en n'hésitant pas à goûter la farce.
5) Mettre un peu de farce au centre de chaque feuille de brick puis replier les quatre côtés de la feuille sur le dessus pour former un rectangle.")

file2 = URI.open("http://res.cloudinary.com/dogomm21h/image/upload/v1606231285/h4ayric0te81ark1scsk.jpg")
recipe2.photo.attach(io: file2, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe2.save!

feuilles_de_brick = Ingredient.create!(name: "brick", unit: "feuille(s)", category: "Frais")
thon = Ingredient.create!(name: "thon", unit: "g", category: "Poisson")
oignon = Ingredient.create!(name: "oignon", unit: "g", category: "Fruits et Légumes")
oeuf = Ingredient.create!(name: "oeuf(s)", unit: "entier", category: "Produits laitiers")
persil = Ingredient.create!(name: "persil", unit: "g", category: "Fruits et Légumes")
citron = Ingredient.create!(name: "citron", unit: "entier", category: "Fruits et Légumes")
huile_d_olive = Ingredient.create!(name: "huile d'olive", unit: "cuillère(s) à soupe", category: "Condiment et Assaisonnement")
poivre = Ingredient.create!(name: "poivre", unit: "pincée(s)", category: "Condiment et Assaisonnement")
pate_brisée = Ingredient.create!(name: "pâte brisée", unit: "rouleau(x)", category: "Frais")
chèvre = Ingredient.create!(name: "chèvre", unit: "tranche(s)", category: "Produits laitiers")
gruyère_rapé = Ingredient.create!(name: "gruyère râpé", unit: "g", category: "Produits laitiers")
miel = Ingredient.create!(name: "miel", unit: "cuillère(s) à soupe", category: "Epicerie sucrée")
crème_fraiche = Ingredient.create!(name: "crème fraîche", unit: "mL", category: "Produits laitiers")

Preparation.create!(ingredient_id: pate_brisée.id, recipe_id: recipe1.id, quantity: 1)
Preparation.create!(ingredient_id: chèvre.id, recipe_id: recipe1.id, quantity: 6 )
Preparation.create!(ingredient_id: gruyère_rapé.id, recipe_id: recipe1.id, quantity: 10)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe1.id, quantity: 100)
Preparation.create!(ingredient_id: miel.id, recipe_id: recipe1.id, quantity: 3)
Preparation.create!(ingredient_id: crème_fraiche.id, recipe_id: recipe1.id, quantity: 100)

Preparation.create!(ingredient_id: feuilles_de_brick.id, recipe_id: recipe2.id, quantity: 10)
Preparation.create!(ingredient_id: thon.id, recipe_id: recipe2.id, quantity: 280)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe2.id, quantity: 80)
Preparation.create!(ingredient_id: oeuf.id, recipe_id: recipe2.id, quantity: 3)
Preparation.create!(ingredient_id: persil.id, recipe_id: recipe2.id, quantity: 30)
Preparation.create!(ingredient_id: citron.id, recipe_id: recipe2.id, quantity: 1)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe2.id, quantity: 3)
Preparation.create!(ingredient_id: poivre.id, recipe_id: recipe2.id, quantity: 1)
