# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Preparation.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
User.destroy_all

    # création recettes et ajout photo

recipe1 = Recipe.create!(name: "Tarte chèvre miel", difficulty: "très facile", price: "bon marché", time: "20 minutes", diet: "vegetarien", content: "1) Piquer la pâte brisée avec une fourchette et l'enfourner à 200°C, thermostat 6-7, environ 10 min.
<br />2) Pendant ce temps, couper l'oignon en dés et le faire suer à l'huile d'olive dans une poêle.
<br />3) Quand les oignons ont bien blondis, y ajouter la crème.
<br />4) Lorsque la pâte commence à dorer, la sortir du four et verser dessus les oignons à la crème.
<br />5) Déposer sur la tarte les rondelles de chèvre.
<br />6) Parsemer de gruyère surtout sur les bords de la pâte pour éviter qu'elle ne se dessèche.
<br />7) Verser le miel en ruban sur toute la tarte.
<br />8) Enfourner à nouveau le temps de gratiner le fromage.")

file1 = URI.open("https://res.cloudinary.com/dogomm21h/image/upload/v1606232113/ofwvigvhy76zijzopwvy.jpg")
recipe1.photo.attach(io: file1, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe1.save!

recipe2 = Recipe.create!(name: "Bricks au thon", difficulty: "très facile", price: "bon marché", time: "25 minutes", diet: "carnivore", content: "1) Faire cuire les œufs dans l'eau bouillante pour qu'ils deviennent durs (9 minutes).
<br />2) Écailler les œufs, les écraser avec une fourchette et les mélanger avec le persil et les oignons.
<br />3) Ajouter le thon émietté et le jus du citron pressé.
<br />4) Poivrer à votre convenance en n'hésitant pas à goûter la farce.
<br />5) Mettre un peu de farce au centre de chaque feuille de brick puis replier les quatre côtés de la feuille sur le dessus pour former un rectangle.")

file2 = URI.open("http://res.cloudinary.com/dogomm21h/image/upload/v1606231285/h4ayric0te81ark1scsk.jpg")
recipe2.photo.attach(io: file2, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe2.save!

recipe3 = Recipe.create!(name: "Lasagnes à la bolognaise", difficulty: "moyen", price: "coût moyen", time: "2 heures 5 minutes", diet: "carnivore", content: "1) Faire revenir gousses hachées d'ail et les oignons émincés dans un peu d'huile d'olive.
<br />2) Ajouter la carotte et la branche de céleri hachée puis la viande et faire revenir le tout.
<br />3) Au bout de quelques minutes, ajouter le vin rouge. Laisser cuire jusqu'à évaporation.
<br />4) Ajouter la purée de tomates, l'eau et les herbes. Saler, poivrer, puis laisser mijoter à feu doux 45 minutes.
<br />5) Préparer la béchamel : faire fondre le beurre.
<br />6) Hors du feu, ajouter la farine d'un coup.
<br />7) Remettre sur le feu et remuer avec un fouet jusqu'à l'obtention d'un mélange bien lisse.
<br />8) Ajouter le lait peu à peu.
<br />9) Remuer sans cesse, jusqu'à ce que le mélange s'épaississe.
<br />10) Ensuite, parfumer avec la muscade, saler, poivrer. Laisser cuire environ 5 minutes, à feu très doux, en remuant. Réserver.
<br />11) Préchauffer le four à 200°C (thermostat 6-7). Huiler le plat à lasagnes. Poser une fine couche de béchamel puis des feuilles de lasagnes, de la bolognaise, de la béchamel et du parmesan. Répéter l'opération 3 fois de suite.
<br />12) Sur la dernière couche de lasagnes, ne mettre que de la béchamel et recouvrir de fromage râpé. Parsemer quelques noisettes de beurre.
<br />13) Enfourner pour environ 25 minutes de cuisson.")

file3 = URI.open("http://res.cloudinary.com/dogomm21h/image/upload/v1606236917/yzijco4kawyvvbg7ggcz.jpg")
recipe3.photo.attach(io: file3, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe3.save!

recipe4 = Recipe.create!(name: "Burger aux galettes de pommes de terre", difficulty: "très facile", price: "bon marché", time: "25 minutes", diet: "carnivore", content: "1) Peler, laver et râper les pommes de terre.
<br />2) Mélanger l'oeuf, la farine, le sel et le poivre.
<br />3) Mélanger la mayonnaise et le ketchup. Réserver.
<br />4) Couper l'oignon en petits morceaux et faire revenir à la poêle dans un peu d'huile.
<br />5) Faire cuire les steaks à la poêle dans un peu d'huile.
<br />6) Faire chauffer de l'huile dans une poêle, et déposer les pommes de terre râpées en forme de galette.
<br />7) Attendre qu'elles dorent et les retourner jusqu'à ce que l'autre face dore.
<br />8) Une fois cuites, les déposer sur du papier absorbant.
<br />9) Le montage : déposer une galette de pommes de terre dans l'assiette, une tranche de cheddar, le steak, le mélange ketchup mayonnaise, les oignons, une autre tranche de cheddar et une autre galette de pommes de terre.
<br />10) Servir avec de la salade en accompagnement.")

file4 = URI.open("https://res.cloudinary.com/dogomm21h/image/upload/v1606249672/368257_nz21mj.jpg")
recipe4.photo.attach(io: file4, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe4.save!

recipe5 = Recipe.create!(name: "Bouchées à la reine", difficulty: "facile", price: "coût moyen", time: "60 minutes", diet: "carnivore", content: "1) Coupez les champignons en lamelles et les quenelles égouttées en petits tronçons.
<br />2)  Coupez la viande en petits dés et cuisez la rapidement (rose). Réservez.
<br />3)  Faites fondre le beurre dans un faitout, ajoutez la farine et faites cuire en remuant pendant 3 mn.
<br />4)  Mouillez ensuite ce roux blond avec le bouillon de volaille et portez à ébullition.
<br />5)  Ajoutez la viande, les champignons, le vin blanc, poivre et noix de muscade. Continuez de faire chauffer en remuant sans arrêt.
<br />6)  Incorporez les quenelles et remuez délicatement.
<br />7)  Délayez à part les jaunes d'oeufs avec la crème fraîche dans un bol, puis versez cette liaison dans le faitout en remuant. Faites chauffer sans bouillir pendant 5 mn.
<br />8)  Faites chauffer les croûtes précuites dans le four à 180°C. Lorsqu'elles sont bien chaudes et très sèches, les sortir et enlever les chapeaux.
<br />9)  Disposez les croûtes sur assiettes individuelles (accompagnées de riz ou pâtes). Les remplir de la garniture en sauce et posez les chapeaux dessus. Servez Aussitôt.")

file5 = URI.open("http://res.cloudinary.com/dogomm21h/image/upload/v1606244788/rwe67r9wtmvu5yseqqxc.jpg")
recipe5.photo.attach(io: file5, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe5.save!

recipe6 = Recipe.create!(name: "Risotto aux asperges fraîches", difficulty: "très facile", price: "coût moyen", time: "60 minutes", diet: "vegetarien", content: "1) Préparer les asperges en cassant le bas de l'asperge d'un coup sec (c'est la partie plus dure), les peler si nécéssaire.
<br />2) Couper en tronçons en réservant les pointes.
<br />3) Faire fondre le beurre et y mettre à suer les échalotes ou l'oignon finement coupés.
<br />4) Ajouter les asperges (sans les pointes) et faites cuire doucement pendant 5 minutes.
<br />5) Ajouter le riz et remonter le feu.
<br />6) Ajouter le vin blanc puis le bouillon de légumes chaud (c'est important) en 3 fois que l'on ajoute à chaque fois qu'il est absorbé.
<br />7) Le riz ne doit pas être croquant mais crémeux, ne pas trop saler, bouillon vin et fromage le feront.
<br />8) A mi-cuisson on ajoute les pointes d'asperges. Goûter pour vérifier la cuisson du riz et poivrer, puis verser le parmesan rapé fin et noix de beurre et bien mélanger pour qu'il fondent.
<br />9) Servir très chaud.")

file6 = URI.open("http://res.cloudinary.com/dogomm21h/image/upload/v1606245859/sohowb09wrstgcfgqnfk.jpg")
recipe6.photo.attach(io: file6, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe6.save!

recipe7 = Recipe.create!(name: "Pâtes carbonara", difficulty: "facile", price: "bon marché", time: "35 minutes", diet: "carnivore", content: "1) Battre les jaunes d'œufs en y ajoutant 1 pincée de sel, 2 pincées de poivre et 40 g de parmigiano reggiano râpé.
<br />2) Remplir une grande casserole d'eau et la faire chauffer avec deux pincées de gros sel.
<br />3) Pendant ce temps, couper la pancetta en lamelles grossières et les faire dorer dans une poêle avec 1 cuillère à soupe d'huile d'olive.
<br />4) Quand l’eau dans la casserole commence à bouillir mettez vos pâtes.
<br />5) Prendre deux cuillères à soupe d'eau de cuisson des pâtes, les verser dans le jaunes d'œufs puis remuer.
<br />6) Réservez la pancetta et laissez la poêle au chaud.
<br />7) Une fois la cuisson des pâtes al dente, les égoutter sommairement et les mettre dans la poêle et remuer.
<br />8) Verser le mélange dans un saladier et incorporez la préparation des jaunes d'œufs.
<br />9) Ajouter la pancetta et deux pincées de poivre. Servez.")

file7 = URI.open("http://res.cloudinary.com/dogomm21h/image/upload/v1606247400/pxebkzouadppyjed7bsj.jpg")
recipe7.photo.attach(io: file7, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe7.save!

recipe8 = Recipe.create!(name: "Riz au curry", difficulty: "moyen", price: "bon marché", time: "30 minutes", diet: "vegetarien", content: "1) Faites chauffer l'huile dans une poêle assez profonde. Versez les deux tasses de riz, puis le faire revenir 3 mn.
<br />2) Versez 2 verres d'eau sur le riz. Ajoutez le cube de bouillon puis le curry selon le goût. Couvrez. Surveillez et mélanger fréquemment.
<br />3) Après absorbtion complète de l'eau, vérifier si le riz est assez cuit; s'il ne l'est pas, rajouter de l'eau jusqu'à ce qu'il le soit.")

file8 = URI.open("http://res.cloudinary.com/dogomm21h/image/upload/v1606247825/giiit5aaog4iqmbynykh.jpg")
recipe8.photo.attach(io: file8, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe8.save!

recipe9 = Recipe.create!(name: "Lasagnes d'aubergines", difficulty: "très facile", price: "coût moyen", time: "1 heure 40 minutes", diet: "vegetarien", content: "1) Peler les aubergines et les couper en tranches (pas trop épaisses) dans le sens de la longueur. Faire chauffer l'huile dans une sauteuse et y faire griller les aubergines sur feu vif: elles doivent devenir tendres et dorées. Les déposer sur du papier absorbant.
<br />2) Préparer la sauce : dans une casserole, faire fondre le beurre ; ajouter la farine et bien remuer. Ajouter ensuite progressivement le coulis (comme pour une béchamel) puis le bouillon, jusqu'à consistance moyennement liquide.
<br />3) Peler la carotte et la détailler en petits dés: les jeter dans la sauce tomate ainsi que l'oignon coupé finement. Ajouter poivre et herbes de Provence. Laisser cuire 30 mn sur feu très doux en remuant souvent.
<br />4) Dans un plat à gratin, couvrir le fond de quelques cuillerées de sauce. Recouvrir de feuilles de lasagnes (sans les faire se chevaucher) puis placer les tranches d'aubergines parallèles. Saler, poivrer, parsemer de parmesan et d'une petite poignée de Comté. Placer à nouveau feuilles de lasagne, sauce, aubergines, Comté, Parmesan. Faire 3 couches. Recouvrir le dessus du gratin de Comté.
<br />5) Cuire 50 min au four préchauffé à thermostat 7 (210°C) et déguster.")

file9 = URI.open("http://res.cloudinary.com/dogomm21h/image/upload/v1606249262/u2hsk0cde5rujv1l7tqn.jpg")
recipe9.photo.attach(io: file9, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe9.save!

recipe10 = Recipe.create!(name: "Tarte aux courgettes", difficulty: "facile", price: "bon marché", time: "40 minutes", diet: "carnivore", content: "1) Peler les courgettes et l'oignon, les couper en dés et les faire revenir dans l'huile avec les lardons.
<br />2) Dérouler la pâte dans un moule à tartes et la piquer avec une fourchette.
<br />3) Mélanger la crème et l'oeuf. Saler et poivrer.
<br />4) Disposer sur la pâte les cougettes, l'oignon et les lardons, puis la préparation.
<br />5) Saupouder d'emmental et enfourner pendant 20 mn environ à four chaud. (180°C, Th 6).")

file10 = URI.open("http://res.cloudinary.com/dogomm21h/image/upload/v1606248831/jqdxtp3nzfr7zyx6ctc4.jpg")
recipe10.photo.attach(io: file10, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe10.save!


    # création ingrédient

ail = Ingredient.create!(name: "ail", unit: "gousse(s)", category: "Fruits et Légumes")
asperge = Ingredient.create!(name:"asperges", unit:"botte(s)", category:"Fruits et Légumes")
aubergine = Ingredient.create!(name:"aubergine(s)", unit:"entier", category:"Fruits et Légumes")
basilic = Ingredient.create!(name: "basilic", unit: "feuille(s)", category: "Fruits et Légumes")
beurre_doux = Ingredient.create!(name: "beurre doux", unit: "g", category: "Produits laitiers")
beurre_salé = Ingredient.create!(name: "beurre salé", unit: "g", category: "Produits laitiers")
boeuf_haché = Ingredient.create!(name: "boeuf haché", unit: "g", category: "Boucherie")
bouillon_legume = Ingredient.create!(name:"bouillon de légumes", unit:"mL", category:"Condiment et Assaisonnement")
bouillon_volaille = Ingredient.create!(name: "bouillon de volaille", unit: "cL", category: "Condiment et Assaisonnement")
carotte = Ingredient.create!(name: "carotte", unit: "entier", category: "Fruits et Légumes")
céleri = Ingredient.create!(name: "céléri", unit: "branche(s)", category: "Fruits et Légumes")
champignons = Ingredient.create!(name: "champignons", unit: "g", category: "Fruits et Légumes")
cheddar = Ingredient.create!(name: "cheddar", unit: "tranche(s)", category: "Produits laitiers")
chèvre = Ingredient.create!(name: "chèvre", unit: "tranche(s)", category: "Produits laitiers")
citron = Ingredient.create!(name: "citron", unit: "entier", category: "Fruits et Légumes")
comté = Ingredient.create!(name:"comté", unit:"g", category:"Produits laitiers")
courgette = Ingredient.create!(name:"courgette(s)", unit:"entier", category:"Fruits et Légumes")
coulis_tomate = Ingredient.create!(name:"coulis de tomate", unit:"g", category:"Condiment et Assaisonnement")
crème_fraiche = Ingredient.create!(name: "crème fraîche", unit: "mL", category: "Produits laitiers")
cube_bouillon = Ingredient.create!(name:"cube de bouillon", unit:"cube(s)", category:"Condiment et Assaisonnement")
curry = Ingredient.create!(name:"curry", unit:"cuillère(s) à soupe", category:"Condiment et Assaisonnement")
eau = Ingredient.create!(name: "eau", unit: "cL", category: "Boissons")
escalope_poulet = Ingredient.create!(name: "escalope(s) de poulet", unit: "entier", category: "Boucherie")
feuilles_de_brick = Ingredient.create!(name: "brick", unit: "feuille(s)", category: "Frais")
farine = Ingredient.create!(name: "farine", unit: "g", category: "Epicerie sucrée")
gruyère_rapé = Ingredient.create!(name: "gruyère râpé", unit: "g", category: "Produits laitiers")
herbe_provence = Ingredient.create!(name:"Herbes de Provence", unit:"pincée(s)", category:"Condiment et Assaisonnement")
huile_d_olive = Ingredient.create!(name: "huile d'olive", unit: "cuillère(s) à soupe", category: "Condiment et Assaisonnement")
ketchup = Ingredient.create!(name: "ketchup", unit: "cuillère(s) à soupe", category: "Condiment et Assaisonnement")
lait = Ingredient.create!(name: "lait", unit: "mL", category: "Produits laitiers")
lardon = Ingredient.create!(name:"lardons", unit:"g", category:"Boucherie")
laurier = Ingredient.create!(name: "laurier", unit: "feuille(s)", category: "Condiment et Assaisonnement")
mayonnaise = Ingredient.create!(name: "mayonnaise", unit: "cuillère(s) à soupe", category: "Condiment et Assaisonnement")
miel = Ingredient.create!(name: "miel", unit: "cuillère(s) à soupe", category: "Epicerie sucrée")
muscade_rapée = Ingredient.create!(name: "muscade rapée", unit: "pincée(s)", category: "Condiment et Assaisonnement")
oeuf = Ingredient.create!(name: "oeuf(s)", unit: "entier", category: "Produits laitiers")
oignon = Ingredient.create!(name: "oignon", unit: "g", category: "Fruits et Légumes")
parmesan = Ingredient.create!(name: "parmesan", unit: "g", category: "Produits laitiers")
pate = Ingredient.create!(name:"pâtes", unit:"g", category:"Frais")
pate_brisée = Ingredient.create!(name: "pâte brisée", unit: "rouleau(x)", category: "Frais")
pate_feuilletée = Ingredient.create!(name: "pâte(s) feuilletée(s)", unit: "entier", category: "Frais")
pate_de_lasagne = Ingredient.create!(name: "pâtes de lasagne", unit: "paquet(s)", category: "Frais")
persil = Ingredient.create!(name: "persil", unit: "g", category: "Fruits et Légumes")
poivre = Ingredient.create!(name: "poivre", unit: "pincée(s)", category: "Condiment et Assaisonnement")
pommes_de_terre = Ingredient.create!(name: "Pommes de terre", unit: "entier", category: "Fruits et Légumes")
purée_de_tomate = Ingredient.create!(name: "purée de tomate", unit: "g", category: "Condiment et Assaisonnement")
quenelle_veau = Ingredient.create!(name: "quenelle(s) de veau", unit: "entier", category: "Boucherie")
riz = Ingredient.create!(name:"riz", unit:"g", category:"Frais")
rumsteack_veau = Ingredient.create!(name: "rumsteack(s) de veau", unit: "entier", category: "Boucherie")
salade = Ingredient.create!(name: "salade", unit: "entier", category: "Fruits et Légumes")
sel = Ingredient.create!(name: "sel", unit: "pincée(s)", category: "Condiment et Assaisonnement")
steak = Ingredient.create!(name: "steak(s)", unit: "entier", category: "Boucherie")
thon = Ingredient.create!(name: "thon", unit: "g", category: "Poisson")
thym = Ingredient.create!(name: "thym", unit: "branche(s)", category: "Condiment et Assaisonnement")
tomate = Ingredient.create!(name: "tomate(s)", unit: "entier", category: "Fruits et Légumes")
vin_blanc = Ingredient.create!(name:"vin blanc", unit:"cL", category:"Cave")
vin_rouge = Ingredient.create!(name: "Vin rouge", unit: "cL", category: "Cave")


    # création préparations

Preparation.create!(ingredient_id: pate_brisée.id, recipe_id: recipe1.id, quantity: 1)
Preparation.create!(ingredient_id: chèvre.id, recipe_id: recipe1.id, quantity: 6 )
Preparation.create!(ingredient_id: gruyère_rapé.id, recipe_id: recipe1.id, quantity: 10)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe1.id, quantity: 100)
Preparation.create!(ingredient_id: miel.id, recipe_id: recipe1.id, quantity: 3)
Preparation.create!(ingredient_id: crème_fraiche.id, recipe_id: recipe1.id, quantity: 100)

Preparation.create!(ingredient_id: feuilles_de_brick.id, recipe_id: recipe2.id, quantity: 3)
Preparation.create!(ingredient_id: thon.id, recipe_id: recipe2.id, quantity: 70)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe2.id, quantity: 20)
Preparation.create!(ingredient_id: oeuf.id, recipe_id: recipe2.id, quantity: 1)
Preparation.create!(ingredient_id: persil.id, recipe_id: recipe2.id, quantity: 8)
Preparation.create!(ingredient_id: citron.id, recipe_id: recipe2.id, quantity: 1)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe2.id, quantity: 1)
Preparation.create!(ingredient_id: poivre.id, recipe_id: recipe2.id, quantity: 1)

Preparation.create!(ingredient_id: pate_de_lasagne.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe3.id, quantity: 38)
Preparation.create!(ingredient_id: ail.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: céleri.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: carotte.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: boeuf_haché.id, recipe_id: recipe3.id, quantity: 75)
Preparation.create!(ingredient_id: purée_de_tomate.id, recipe_id: recipe3.id, quantity: 100)
Preparation.create!(ingredient_id: eau.id, recipe_id: recipe3.id, quantity: 2)
Preparation.create!(ingredient_id: vin_rouge.id, recipe_id: recipe3.id, quantity: 3)
Preparation.create!(ingredient_id: laurier.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: thym.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: basilic.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: muscade_rapée.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: gruyère_rapé.id, recipe_id: recipe3.id, quantity: 10)
Preparation.create!(ingredient_id: parmesan.id, recipe_id: recipe3.id, quantity: 16)
Preparation.create!(ingredient_id: sel.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: poivre.id, recipe_id: recipe3.id, quantity: 1)
Preparation.create!(ingredient_id: farine.id, recipe_id: recipe3.id, quantity: 13)
Preparation.create!(ingredient_id: beurre_doux.id, recipe_id: recipe3.id, quantity: 16)
Preparation.create!(ingredient_id: lait.id, recipe_id: recipe3.id, quantity: 125)

Preparation.create!(ingredient_id: salade.id, recipe_id: recipe4.id, quantity: 1)
Preparation.create!(ingredient_id: pommes_de_terre.id, recipe_id: recipe4.id, quantity: 2)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe4.id, quantity: 50)
Preparation.create!(ingredient_id: tomate.id, recipe_id: recipe4.id, quantity: 1)
Preparation.create!(ingredient_id: cheddar.id, recipe_id: recipe4.id, quantity: 2)
Preparation.create!(ingredient_id: mayonnaise.id, recipe_id: recipe4.id, quantity: 1)
Preparation.create!(ingredient_id: ketchup.id, recipe_id: recipe4.id, quantity: 1)
Preparation.create!(ingredient_id: oeuf.id, recipe_id: recipe4.id, quantity: 1)
Preparation.create!(ingredient_id: farine.id, recipe_id: recipe4.id, quantity: 15)
Preparation.create!(ingredient_id: sel.id, recipe_id: recipe4.id, quantity: 1)
Preparation.create!(ingredient_id: poivre.id, recipe_id: recipe4.id, quantity: 1)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe4.id, quantity: 1)
Preparation.create!(ingredient_id: steak.id, recipe_id: recipe4.id, quantity: 1)

Preparation.create!(ingredient_id: rumsteack_veau.id, recipe_id: recipe5.id, quantity: 1)
Preparation.create!(ingredient_id: escalope_poulet.id, recipe_id: recipe5.id, quantity: 1)
Preparation.create!(ingredient_id: champignons.id, recipe_id: recipe5.id, quantity: 34)
Preparation.create!(ingredient_id: quenelle_veau.id, recipe_id: recipe5.id, quantity: 1)
Preparation.create!(ingredient_id: beurre_salé.id, recipe_id: recipe5.id, quantity: 8)
Preparation.create!(ingredient_id: farine.id, recipe_id: recipe5.id, quantity: 8)
Preparation.create!(ingredient_id: bouillon_volaille.id, recipe_id: recipe5.id, quantity: 13)
Preparation.create!(ingredient_id: oeuf.id, recipe_id: recipe5.id, quantity: 1)
Preparation.create!(ingredient_id: crème_fraiche.id, recipe_id: recipe5.id, quantity: 2)
Preparation.create!(ingredient_id: vin_blanc.id, recipe_id: recipe5.id, quantity: 5)
Preparation.create!(ingredient_id: poivre.id, recipe_id: recipe5.id, quantity: 1)
Preparation.create!(ingredient_id: muscade_rapée.id, recipe_id: recipe5.id, quantity: 1)
Preparation.create!(ingredient_id: pate_feuilletée.id, recipe_id: recipe5.id, quantity: 1)

Preparation.create!(ingredient_id: asperge.id, recipe_id: recipe6.id, quantity: 1)
Preparation.create!(ingredient_id: riz.id, recipe_id: recipe6.id, quantity: 75)
Preparation.create!(ingredient_id: beurre_salé.id, recipe_id: recipe6.id, quantity: 13)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe6.id, quantity: 1)
Preparation.create!(ingredient_id: vin_blanc.id, recipe_id: recipe6.id, quantity: 4)
Preparation.create!(ingredient_id: bouillon_legume.id, recipe_id: recipe6.id, quantity: 250)
Preparation.create!(ingredient_id: parmesan.id, recipe_id: recipe6.id, quantity: 25)
Preparation.create!(ingredient_id: sel.id, recipe_id: recipe6.id, quantity: 1)
Preparation.create!(ingredient_id: poivre.id, recipe_id: recipe6.id, quantity: 1)

Preparation.create!(ingredient_id: oeuf.id, recipe_id: recipe7.id, quantity: 2)
Preparation.create!(ingredient_id: lardon.id, recipe_id: recipe7.id, quantity: 125)
Preparation.create!(ingredient_id: parmesan.id, recipe_id: recipe7.id, quantity: 13)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe7.id, quantity: 1)
Preparation.create!(ingredient_id: poivre.id, recipe_id: recipe7.id, quantity: 2)
Preparation.create!(ingredient_id: sel.id, recipe_id: recipe7.id, quantity: 1)
Preparation.create!(ingredient_id: pate.id, recipe_id: recipe7.id, quantity: 75)

Preparation.create!(ingredient_id: riz.id, recipe_id: recipe8.id, quantity: 75)
Preparation.create!(ingredient_id: cube_bouillon.id, recipe_id: recipe8.id, quantity: 1)
Preparation.create!(ingredient_id: curry.id, recipe_id: recipe8.id, quantity: 1)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe8.id, quantity: 1)
Preparation.create!(ingredient_id: ail.id, recipe_id: recipe8.id, quantity: 1)
Preparation.create!(ingredient_id: basilic.id, recipe_id: recipe8.id, quantity: 4)
Preparation.create!(ingredient_id: eau.id, recipe_id: recipe8.id, quantity: 50)

Preparation.create!(ingredient_id: aubergine.id, recipe_id: recipe9.id, quantity: 1)
Preparation.create!(ingredient_id: pate_de_lasagne.id, recipe_id: recipe9.id, quantity: 2)
Preparation.create!(ingredient_id: coulis_tomate.id, recipe_id: recipe9.id, quantity: 125)
Preparation.create!(ingredient_id: carotte.id, recipe_id: recipe9.id, quantity: 1)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe9.id, quantity: 25)
Preparation.create!(ingredient_id: beurre_salé.id, recipe_id: recipe9.id, quantity: 7)
Preparation.create!(ingredient_id: farine.id, recipe_id: recipe9.id, quantity: 7)
Preparation.create!(ingredient_id: bouillon_legume.id, recipe_id: recipe9.id, quantity: 13)
Preparation.create!(ingredient_id: parmesan.id, recipe_id: recipe9.id, quantity: 13)
Preparation.create!(ingredient_id: comté.id, recipe_id: recipe9.id, quantity: 38)
Preparation.create!(ingredient_id: herbe_provence.id, recipe_id: recipe9.id, quantity: 1)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe9.id, quantity: 1)

Preparation.create!(ingredient_id: pate_brisée.id, recipe_id: recipe10.id, quantity: 1)
Preparation.create!(ingredient_id: lardon.id, recipe_id: recipe10.id, quantity: 17)
Preparation.create!(ingredient_id: gruyère_rapé.id, recipe_id: recipe10.id, quantity: 10)
Preparation.create!(ingredient_id: courgette.id, recipe_id: recipe10.id, quantity: 1)
Preparation.create!(ingredient_id: oeuf.id, recipe_id: recipe10.id, quantity: 1)
Preparation.create!(ingredient_id: crème_fraiche.id, recipe_id: recipe10.id, quantity: 4)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe10.id, quantity: 1)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe10.id, quantity: 1)
