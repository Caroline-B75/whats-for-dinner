# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Access.destroy_all
Review.destroy_all
Preparation.destroy_all
Ingredient.destroy_all
GroceryItem.destroy_all
MenuRecipe.destroy_all
Recipe.destroy_all
Menu.destroy_all
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

recipe11 = Recipe.create!(name: 'Truffade gastronomique', difficulty: 'facile', price: 'assez cher', time: '45 minutes', diet: 'vegetarien', content: "1) Épluchez, lavez et coupez les pommes de terre en fines rondelles. Séchez-les dans un linge propre. Coupez le cantal en lamelles. Réservez. Découpez de fines lamelles de truffes. Réservez-en 1/4.
<br />2) Dans une sauteuse, versez l’huile puis les pommes de terre et laissez-les cuire à couvert durant 20 min à feu moyen en remuant de temps en temps. Salez et poivrez. Une fois les pommes de terre bien rissolées, réservez-en 1/4 sur du papier absorbant, ajoutez 2 gousses d’ail hachées, les lamelles de truffes et les 3/4 des lamelles de fromage. Laissez le fromage fondre sans remuer à couvert pendant 5 min. Préchauffez le four à 150 °C.
<br />3) Servez la truffade dans des plats à gratin individuels, saupoudrez d’ail et de persil hachés. Utilisez les pommes de terre, lamelles de truffe et de fromage restantes pour réaliser un joli dressage en rosace.
<br />4) Enfournez les plats 5 min au four, le temps que le fromage commence à fondre. Servez et dégustez.")


file11 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606658660/whats_for_dinner/truffade.jpg')
recipe11.photo.attach(io: file11, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe11.save!


recipe12 = Recipe.create!(name: "Crème de courge et foie gras", difficulty: "facile", price: "coût moyen", time: "25 minutes", diet: "carnivore", content: "1) Faire suer l'oignon au beurre et ajouter la courge coupée en petits morceaux. Couvrir avec le fond de volaille et cuire à petit feu jusqu'à ce que le légume soit tendre.
<br />2) Passer au robot et ajouter 1 dl de crème, 1 pincée de sucre, sel et poivre. laisser en attente.
<br />3) Couper le foie en petits cubes et laisser au frais.
<br />4) Finitions : réchauffer la crème de courge, répartir les cubes de foie gras dans les soupières et verser par dessus. Décorer avec quelques pluches de cerfeuil.")


file12 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606662216/whats_for_dinner/creme_courge_et_foie_gras.jpg')
recipe12.photo.attach(io: file12, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe12.save!


recipe13 = Recipe.create!(name: "Soupe de poulet à la citronnelle", difficulty: "facile", price: "coût moyen", time: "35 minutes", diet: "carnivore", content: "1) Lavez la citronnelle et coupez-la en tronçons d'environ 3 cm de long. Lavez le galanga, épluchez-le et coupez-le en fines tranches. Lavez les feuilles de citron vert, égouttez-les et coupez-les en 4.
<br />2) Nettoyez et grattez les champignons, coupez-les en morceaux. Lavez les tomates, coupez-les en 4. Lavez les piments, ôtez-en les graines et coupez-les en fines rondelles. Coupez le blanc de poulet en bâtonnets d'environ 1 cm de large sur 4 cm ce long.
<br />3) Faites chauffer le lait de coco dans la casserole. Ajoutez-y la citronnelle et les feuilles de citron vert, ainsi que les tranches de galanga, et faites cuire à découvert sur feu moyen 2 min. Ajouter 75 cl d'eau, laissez chauffer puis ajoutez le blanc de poulet, les champignons et les tomates. Laissez cuire à feu doux 5 min. Retirez éventuellement les morceaux de galanga et de citronnelle.
<br />4) Mettez les rondelles de piment, le jus de limette et la sauce de poisson dans une soupière. Versez la soupe par-dessus et garnissez de feuilles de coriandre.")

file13 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606663142/whats_for_dinner/soupe_de_poulet_a_la_citronnelle.jpg')
recipe13.photo.attach(io: file13, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe13.save!

recipe14 = Recipe.create!(name: "Moules marinières", difficulty: "facile", price: "bon marché", time: "1 heure", diet: "vegetarien", content: "1) Hachez les échalotes.
<br />2) Grattez bien et lavez les moules. Mettez-les dans une cocotte avec 1 noix de beurre, les échalotes hachées et le vin blanc.
<br />3) Faites-les ouvrir dans la cocotte couverte, sur feu vif pendant quelques minutes. Mélangez 2 ou 3 fois pendant la cuisson.
<br />4) Dès qu'elles sont ouvertes, retirez les moules de la cocotte en conservant le jus de la cuisson. Déposez-les dans 1 plat creux et gardez-les au chaud.
<br />5) Remettez le jus sur le feu. Malaxez avec 1 fourchette 1 cuillerée à café de farine avec le même volume de beurre ou de margarine. Incorporez le tout au jus de la cuisson des moules sur le feu. Laissez bouillir un instant. Salez poivrez.
<br />6) Versez sur les moules. Saupoudrez de persil haché et servez.")

file14 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606665461/whats_for_dinner/moules_marinieres.jpg')
recipe14.photo.attach(io: file14, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe14.save!


recipe15 = Recipe.create!(name: 'Paupiettes au whisky', difficulty: 'facile', price: 'assez cher', time: '50 minutes', diet: 'carnivore', content: "1) Dans un faitout, mettre de l'huile d'olive, à feu vif, et faire dorer les paupiettes de tous côtés.
<br />2) Une fois qu'elles sont bien dorées, ajouter un peu de whisky, et faire flamber.
<br />3) Réserver le tout dans une assiette.
<br />4) Dans le faitout, mettre l'oignon emincé, l'echalote, l'ail en chemise, et les faire dorer. Ajouter les lardons.
<br />5) En meme temps, faire cuire à feu vif dans une poêle, les champignons retirés de leurs jus, avec une gouse d'ail emincée.
<br />6) Réunir les champignons dans le faitout, ainsi que les paupiettes et leur jus flambé. Verser un 1/2 verre d'eau, et couvrir.
<br />7) Laisser cuire à feu moyen, pendant 30 min.
<br />8) Au bout de 30 min, rajouter 2 cuillères à soupe de crème fraîche, et laisser finir de cuire 5 à 10 min, à découvert.")

file15 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606666446/whats_for_dinner/paupiettes-wisky_ehnndz.jpg')
recipe15.photo.attach(io: file15, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe15.save!


recipe16 = Recipe.create!(name: "Souris d'agneau au miel et thym", difficulty: "facile", price: "bon marché", time: "2h15", diet: "carnivore", content: "1) Dans un poêlon, faites fondre l'huile d'olive avec le miel jusqu'à l'obtention d'un mélange homogène.
<br />2) Disposez les souris d'agneau dans une cocotte allant au four, salez et poivrez-les selon votre goût. Enduisez-les du mélange huile d'olive-miel. Ajoutez les gousses d'ail non épluchées et le thym.
<br />3) Couvrez la cocotte et enfournez-la pendant 2 bonnes heures à 170°C (150°C si four à chaleur tournante)
<br />4) A partir d'une heure de cuisson, surveillez la cuisson de temps en temps afin d'ajouter ou non un peu de liquide : eau, vin ou bouillon (cela dépend de la matière du plat que vous utilisez). Bon appétit !")

file16 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606666999/whats_for_dinner/souris_agneau_miel_thym_hovqgp.jpg')
recipe16.photo.attach(io: file16, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe16.save!


recipe17 = Recipe.create!(name: 'Risotto au potiron', difficulty: 'facile', price: 'bon marché', time: '1 heure', diet: 'vegetarien', content: "1) Pelez le potiron, éliminez les graines et coupez-le en tranches fines.
<br />2) Hachez menu l'oignon et faites-le revenir dans 20 g de beurre, ajoutez le poiton, salez et laissez cuire à feu lent, en mélangeant et en versant un peu de bouillon.
<br />3) Quand le potiron est défait, versez le riz et faites-le cuire pendant 18 minutes en rajoutant du bouillon chaud au fur et à mesure qu'il est absorbé.
<br />4) Ajoutez le lait, mélangez à feu vif, ajouter le poivre, le persil et une bonne dose de parmesan. Mélangez rapidement avant de servir de façon que tous les ingrédients soient parfaitement amalgamés.")

file17 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606667743/whats_for_dinner/risotto_potiron_slmbs3.jpg')
recipe17.photo.attach(io: file17, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe17.save!


recipe18 = Recipe.create!(name: 'Poivrons farcis', difficulty: 'facile', price: 'bon marché', time: '1h10', diet: 'vegetarien', content: "1) Préparer la farce : Mélanger le riz avec les herbes hachées menu, les épices et le concentré de tomates. Bien malaxer.
<br />2) Enlever le chapeau des poivrons et bien rincer l'intérieur.
<br />3) Préparer la sauce:
Faire dorer l'oignon émincé, y rajouter le cube, le concentré et diluer. Porter à ébullition.
<br />4) Pendant que la sauce mijote, remplir les poivrons aux trois-quart.
<br />5) Les mettre dans la sauce, arroser de sauce l'intérieur des poivrons.
<br />6) Mettre à feu doux et imbiber de jus de temps en temps.")

file18 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606668448/whats_for_dinner/poivrons_farcis.jpg')
recipe18.photo.attach(io: file18, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe18.save!


recipe19 = Recipe.create!(name: 'Gnocchi de patate douce', difficulty: 'facile', price: 'bon marché', time: '45 minutes', diet: 'vegetarien', content: "1) Eplucher et couper les patates douces en morceaux. Plus les morceaux sont petits, plus ils vont cuire vite. Faire cuire 20 min dans l'autocuiseur.
<br />2) Faire de la purée avec les patates douces (avec un presse-purée ou avec une fourchette) Ajouter immédiatement le jaune d'oeuf.
<br />3) Ajouter la farine, la fécule, le sel et la muscade. Mélanger avec les mains pour obtenir une boule. Attention de ne pas se brûler.
<br />4) Laisser la pâte refroidir.
<br />5) Sur un plan de travail fariné, diviser la pâte en 4 et former 4 boudins avec. Puis, couper des tronçons d'1 cm sur chacun des boudins.
<br />6) Saupoudrer les gnocchis avec de la farine et former les stries avec le dos d'une fourchette.
<br />7) Faire bouillir une grande casserole d'eau salée. Quand l'eau et à ébullition, ajouter les gnocchis.
<br />8) Les gnocchis sont cuits quand ils remontent à la surface. La cuisson prend généralement quelques secondes.
<br />9) Sortir rapidement les gnocchis à l'aide d'un écumoire.
<br />10) Dans une sauteuse, faire fondre une noisette de beurre. Ajouter la crème fraîche, saler et poivrer.
<br />12) Couper la cuisson, saupoudrer de parmesan et parsemer des feuilles de basilic. Déguster aussitôt !")

file19 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606669082/whats_for_dinner/gnoccki_patate_douce_zh13xy.jpg')
recipe19.photo.attach(io: file19, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe19.save!


recipe20 = Recipe.create!(name: 'Parmentier de légumes', difficulty: 'facile', price: 'bon marché', time: '1h10', diet: 'vegetarien', content: "1) Peler les pommes de terre et détailler le brocoli en bouquets. Faire cuire à la vapeur pendant 20 min.
<br />2) Laver et éplucher les carottes. Éplucher l'oignon et émincer le.
<br />3) Dans une cocotte, faire revenir l'oignon et ajouter les carottes coupées en petits morceaux.
<br />4) Ajouter le bouillon et laisser cuire 15mn à feu doux.
<br />5) Passer les pommes de terre au moulin à légumes. Ajouter 40 g de beurre en morceaux, le jaune d'œuf et le lait. Assaisonner avec du sel et du poivre à votre convenance.
<br />6) Dans la cocotte, ajouter les tomates pelées et les bouquets de brocoli. Laisser cuire 10 min à feu doux.
<br />7) Beurrer un plat à gratin et verser d'abord la préparation de légumes. Ajouter par dessus la purée de pommes de terre.
<br />8) Lisser le dessus avec une fourchette et recouvrir de chapelure.
<br />9) Enfourner dans un four chaud à 230°C / Thermostat 8")

file20 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606675184/whats_for_dinner/parmentier_de_legumes.jpg')
recipe20.photo.attach(io: file20, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe20.save!


recipe21 = Recipe.create!(name: 'Aubergines farcies à la mozzarella', difficulty: 'facile', price: 'bon marché', time: '1 heure', diet: 'vegetarien', content: "1) Blanchir les aubergines pendant 8 mn à l'eau bouillante.
<br />2) Les couper en 2 et les laisser refroidir dans une passoire.
<br />3) Vider les aubergines.
<br />4) Mélanger la pulpe avec 400 g de mozzarella coupée en petits dés.
<br />5) Ajouter un bouquet de basilic ciselé, du persil, sel, poivre et 6 cuillerées à café d'huile d'olive.
<br />6) Farcir les aubergines.
<br />7) Ajouter la pulpe de tomates à laquelle vous aurez ajouté un peu de thym, sel, poivre et éventuellement un peu de sucre, recouvrir le tout d'une tranche de mozzarella et passer au four à 200°C pendant 40 mn.")

file21 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606676857/whats_for_dinner/aubergines_farcies_a_la_mozzarella.jpg')
recipe21.photo.attach(io: file21, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe21.save!


recipe22 = Recipe.create!(name: 'Nouilles chinoises aux légumes', difficulty: 'facile', price: 'bon marché', time: '25 minutes', diet: 'vegetarien', content: "1) Détailler tous les légumes en fine julienne.
<br />2) Faire bouillir une grande casserole d'eau salée, y jeter les nouilles, dès que l'ébullition à repris, couvrir, éteindre le feu et laisser reposer pendant 4 min.
<br />3) Pendant ce temps, faire revenir les légumes dans l'huile pendant 5 mn, à feu très vif, ajouter les cinq épices et la sauce de soja.
<br />4) Égoutter les nouilles, les joindre aux légumes et rectifier l'assaisonnement si besoin.")

file22 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606677326/whats_for_dinner/nouilles_chinoises_aux_legumes.jpg')
recipe22.photo.attach(io: file22, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe22.save!


recipe23 = Recipe.create!(name: 'Curry de légumes', difficulty: 'facile', price: 'bon marché', time: '1h20', diet: 'vegetarien', content: "1) Débiter les carottes en fines tranches et la patate en petits morceaux. Découper les courgettes en quarts de rondelles tout en conservant la peau.
<br />2) Détailler les échalotes et l'ail et les faire dorer dans une grande sauteuse avec un peu d'huile. Ajouter les légumes, réduire le feu et couvrir.
<br />3) En parallèle, dans un saladier, mélanger la crème de coco, le concentré de tomates et la pâte de curry avec le jus des citrons verts. Ajouter le piment et le basilic moulus, le cumin, et napper les légumes de ce mélange bien homogène. Ajouter 1/2 verre d'eau.
<br />4) Poivrer et saler à discrétion.
<br />5) Bien laisser mijoter sous couvercle à feu minimum.")

file23 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606678287/whats_for_dinner/curry_de_legumes.jpg')
recipe23.photo.attach(io: file23, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe23.save!


recipe24 = Recipe.create!(name: 'Dahl de lentilles corail', difficulty: 'facile', price: 'bon marché', time: '30 minutes', diet: 'vegetarien', content: "1) Laver les tomates et les découper en dés. Peler les carottes, et les découper en fines rondelles.
<br />2) Dans une casserole, verser les lentilles corail et couvrir d'eau. Porter à ébullition. Laisser cuire pendant 10 min environ, jusqu'à complète absorption de l'eau. Retire du feu et laisser reposer.
<br />3) Dans une sauteuse, verser l'huile et chauffer. Y ajouter l'ail qui dorera pendant une petite minute. Verser ensuite les légumes et saupoudrer avec les épices. Ajouter enfin le concentré de tomate.
<br />4) Verser le lait de coco et laisser mijoter environ 10 min. sans couvrir.
<br />5) Enfin, ajouter les lentilles et bien remuer le tout.")

file24 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606680037/whats_for_dinner/dahl_de_lentilles_corail_h944qh.jpg')
recipe24.photo.attach(io: file24, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe24.save!


recipe25 = Recipe.create!(name: 'Tacos mexicains', difficulty: 'facile', price: 'bon marché', time: '55 minutes', diet: 'carnivore', content: "1) A la poêle, faire dorer l'oignon émincé dans un peu d'huile d'olive.
<br />2) Rajouter la viande, assaisonner et laisser cuire 5 min.
<br />3) Laver les feuilles de laitue.
<br />4) Couper les tomates et le poivron en petits dés.
<br />5) Incorporer le tout à la poêlée avec le coulis de tomate, et poursuivre la cuisson pendant 5 min.
<br />6) Egoutter les haricots rouges et les ajouter 2 min avant la fin de cuisson.
<br />7) Hors du feu, ajuster l'assaisonnement et saupoudrer généreusement de cumin; on peut aussi rajouter quelques gouttes de Tabasco.
<br />8) Garnir les tortillas de préparation et les refermer en les roulant comme des crêpes. Disposer 1 feuille de laitue sur chaque tacos avant de servir.")

file25 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606681186/whats_for_dinner/tacos_mexicains_usoldr.jpg')
recipe25.photo.attach(io: file25, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe25.save!


recipe26 = Recipe.create!(name: 'Rôti de veau et champignons', difficulty: 'facile', price: 'coût moyen', time: '50 minutes', diet: 'carnivore', content: "1) Faire fondre le beurre dans une cocotte minute, y faire dorer le rôti de toutes parts, puis ajouter l'oignon émincé, le sel et le poivre.
<br />2) Délayer dans un bol le fond de veau, les herbes, le basilic, le vin blanc et 1 verre d'eau. Verser ce mélange dans la cocotte, ainsi que les champignons lavées et coupés en quartiers et remuer.
<br />3) Fermer la cocotte et laisser chuchoter environ 30 min par kg.")


file26 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606681951/whats_for_dinner/roti_de_veau_hafer2.jpg')
recipe26.photo.attach(io: file26, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe26.save!


recipe27 = Recipe.create!(name: "Lotte à l'Armoricaine", difficulty: 'facile', price: 'assez cher', time: '1 heure', diet: 'vegetarien', content: "1) Pelez et hachez les 4 échalotes.
<br />2) Pelez et pressez la gousse d'ail.
<br />3) Pelez la douzaine d'oignons grelots.
<br />4) Ouvrez la boîte de tomates et coupez-les.
<br />5) Délayez le concentré de tomates dans les 20 cl de vin blanc.
<br />6) Dans une cocotte en fonte, faites chauffer le beurre et l'huile et y faire colorer à feu vif les tranches de lotte.
<br />7) Flambez-les avec le Cognac puis retirez et placez sur une assiette.
<br />8) Mettez à la place les échalotes, l'ail, les oignons, les tomates et le vin dans lequel est délayé le concentré de tomates. Salez, poivrez, ajoutez le piment et laissez mijoter environ 20 min à découvert.
<br />9) Remettez la lotte dans la sauce, couvrez et laissez cuire encore 20 min.
<br />10) Accompagnez de légumes, pommes de terre et carottes cuites vapeur.")

file27 = URI.open('https://res.cloudinary.com/dogomm21h/image/upload/v1606682436/whats_for_dinner/lotte_a_l_armoricaine_x0e7hj.jpg')
recipe27.photo.attach(io: file27, filename: 'some-image.jpg', content_type: 'image/jpg')
recipe27.save!



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
thon = Ingredient.create!(name: "thon", unit: "g", category: "Poissonnerie")
thym = Ingredient.create!(name: "thym", unit: "branche(s)", category: "Condiment et Assaisonnement")
tomate = Ingredient.create!(name: "tomate(s)", unit: "entier", category: "Fruits et Légumes")
vin_blanc = Ingredient.create!(name:"vin blanc", unit:"cL", category:"Cave")
vin_rouge = Ingredient.create!(name: "Vin rouge", unit: "cL", category: "Cave")
truffes = Ingredient.create!(name: 'truffes', unit: 'g', category: 'Fruits et Légumes')
cantal = Ingredient.create!(name: 'cantal', unit: 'g', category: 'Produits laitiers')
foie_de_canard_cru = Ingredient.create!(name: 'foie de canard cru', unit: 'g', category: 'Boucherie')
courge = Ingredient.create!(name: 'courge', unit: 'g', category: 'Fruits et Légumes')
fond_de_volaille = Ingredient.create!(name: 'fond de volaille', unit: 'mL', category: 'Condiment et Assaisonnement')
cerfeuil = Ingredient.create!(name: 'cerfeuil', unit: 'branche(s)', category: 'Fruits et Légumes')
citronnelle = Ingredient.create!(name: 'citronnelle', unit: 'branche(s)', category: 'Fruits et Légumes')
gingembre_frais = Ingredient.create!(name: 'gingembre frais', unit: 'g', category: 'Fruits et Légumes')
feuilles_de_citron_vert = Ingredient.create!(name: 'feuilles de citron vert', unit: 'feuille(s)', category: 'Fruits et Légumes')
champignons_de_paris = Ingredient.create!(name: 'champignons de Paris', unit: 'g', category: 'Fruits et Légumes')
piment_oiseaux_frais = Ingredient.create!(name: 'piment oiseaux frais', unit: 'entier', category: 'Fruits et Légumes')
lait_de_coco = Ingredient.create!(name: 'lait de coco', unit: 'mL', category: 'Frais')
coriandre_fraiche = Ingredient.create!(name: 'coriandre fraiche', unit: 'branche(s)', category: 'Fruits et Légumes')
sauce_poisson_thai = Ingredient.create!(name: 'sauce poisson thai', unit: 'cuillère(s) à soupe', category: 'Condiment et Assaisonnement')
moule = Ingredient.create!(name: 'moule', unit: 'L', category: 'Poissonnerie')
échalotte = Ingredient.create!(name: 'échalotte', unit: 'entier', category: 'Fruits et Légumes')
paupiettes_de_veau = Ingredient.create!(name: 'paupiettes_de_veau', unit: 'entier', category: 'Boucherie')
wisky = Ingredient.create!(name: 'wisky', unit: 'mL', category: 'Boissons')
potiron = Ingredient.create!(name: 'potiron', unit: 'g', category: 'Fruits et Légumes')
poivron_rouge = Ingredient.create!(name: 'poivron rouge', unit: 'entier', category: 'Fruits et Légumes')
aneth = Ingredient.create!(name: 'aneth', unit: 'branche(s)', category: 'Fruits et Légumes')
patate_douce = Ingredient.create!(name: 'patate douce', unit: 'g', category: 'Fruits et Légumes')
fécule_de_pomme_de_terre = Ingredient.create!(name: 'fécule de pomme de terre', unit: 'g', category: 'Epicerie sucrée')
crème_fraiche_épaisse = Ingredient.create!(name: 'crème fraiche épaisse', unit: 'mL', category: 'Frais')
brocoli = Ingredient.create!(name: 'brocoli', unit: 'g', category: 'Fruits et Légumes')
tomates_pelées = Ingredient.create!(name: 'tomates pelées', unit: 'g', category: 'Condiment et Assaisonnement')
chapelure = Ingredient.create!(name: 'chapelure', unit: 'g', category: 'Condiment et Assaisonnement')
mozzarella = Ingredient.create!(name: 'mozzarella', unit: 'g', category: 'Frais')
poireau = Ingredient.create!(name: 'poireau', unit: 'entier', category: 'Fruits et Légumes')
nouilles_chinoises = Ingredient.create!(name: 'nouilles chinoises', unit: 'g', category: 'Epicerie salée')
mélange_cinq_épices = Ingredient.create!(name: 'mélange cinq épices', unit: 'pincée(s)', category: 'Condiment et Assaisonnement')
sauce_soja_salée = Ingredient.create!(name: 'sauce soja salée', unit: 'cuillère(s) à café', category: 'Condiment et Assaisonnement')
pâte_curry_rouge = Ingredient.create!(name: 'pâte curry rouge', unit: 'g', category: 'Condiment et Assaisonnement')
concentré_de_tomates = Ingredient.create!(name: 'concentré de tomates', unit: 'cuillère(s) à café', category: 'Condiment et Assaisonnement')
citron_vert = Ingredient.create!(name: 'citron vert', unit: 'entier', category: 'Fruits et Légumes')
cumin = Ingredient.create!(name: 'cumin', unit: 'pincée(s)', category: 'Condiment et Assaisonnement')
petit_piment_rouge = Ingredient.create!(name: 'petit piment rouge', unit: 'entier', category: 'Fruits et Légumes')
lentilles_corail = Ingredient.create!(name: 'lentilles corail', unit: 'g', category: 'Epicerie salée')
curcuma = Ingredient.create!(name: 'curcuma', unit: 'pincée(s)', category: 'Condiment et Assaisonnement')
tortillas_pour_tacos = Ingredient.create!(name: 'tortillas pour tacos', unit: 'unité(s)', category: 'Epicerie salée')
oignon_blanc = Ingredient.create!(name: 'oignon blanc', unit: 'g', category: 'Fruits et Légumes')
haricots_rouges = Ingredient.create!(name: 'haricots rouges', unit: 'g', category: 'Epicerie salée')
poivron_vert = Ingredient.create!(name: 'poivron vert', unit: 'entier', category: 'Fruits et Légumes')
laitue = Ingredient.create!(name: 'laitue', unit: 'feuille(s)', category: 'Fruits et Légumes')
tabasco = Ingredient.create!(name: 'tabasco', unit: 'goutte(s)', category: 'Condiment et Assaisonnement')
roti_de_veau = Ingredient.create!(name: 'rôti de veau', unit: 'g', category: 'Boucherie')
fond_de_veau = Ingredient.create!(name: 'fond de veau', unit: 'cuillère(s) à café', category: 'Condiment et Assaisonnement')
queue_de_lotte = Ingredient.create!(name: 'queue de lotte', unit: 'g', category: 'Poissonnerie')
oignons_grelons = Ingredient.create!(name: 'oignons grelons', unit: 'entier', category: 'Fruits et Légumes')
cognac = Ingredient.create!(name: 'cognac', unit: 'cL', category: 'Boissons')
piment_de_cayenne = Ingredient.create!(name: 'piment de cayenne', unit: 'pincée(s)', category: 'Condiment et Assaisonnement')



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

Preparation.create!(ingredient_id: pommes_de_terre.id, recipe_id: recipe11.id, quantity: 1)
Preparation.create!(ingredient_id: truffes.id, recipe_id: recipe11.id, quantity: 3)
Preparation.create!(ingredient_id: persil.id, recipe_id: recipe11.id, quantity: 1)
Preparation.create!(ingredient_id: sel.id, recipe_id: recipe11.id, quantity: 1)
Preparation.create!(ingredient_id: cantal.id, recipe_id: recipe11.id, quantity: 50)
Preparation.create!(ingredient_id: ail.id, recipe_id: recipe11.id, quantity: 1)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe11.id, quantity: 1)
Preparation.create!(ingredient_id: poivre.id, recipe_id: recipe11.id, quantity: 1)
Preparation.create!(ingredient_id: foie_de_canard_cru.id, recipe_id: recipe12.id, quantity: 20)
Preparation.create!(ingredient_id: courge.id, recipe_id: recipe12.id, quantity: 50)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe12.id, quantity: 16)
Preparation.create!(ingredient_id: crème_fraiche.id, recipe_id: recipe12.id, quantity: 17)
Preparation.create!(ingredient_id: fond_de_volaille.id, recipe_id: recipe12.id, quantity: 50)
Preparation.create!(ingredient_id: cerfeuil.id, recipe_id: recipe12.id, quantity: 1)
Preparation.create!(ingredient_id: citronnelle.id, recipe_id: recipe13.id, quantity: 1)
Preparation.create!(ingredient_id: gingembre_frais.id, recipe_id: recipe13.id, quantity: 6)
Preparation.create!(ingredient_id: feuilles_de_citron_vert.id, recipe_id: recipe13.id, quantity: 3)
Preparation.create!(ingredient_id: champignons_de_paris.id, recipe_id: recipe13.id, quantity: 63)
Preparation.create!(ingredient_id: tomate.id, recipe_id: recipe13.id, quantity: 1)
Preparation.create!(ingredient_id: piment_oiseaux_frais.id, recipe_id: recipe13.id, quantity: 1)
Preparation.create!(ingredient_id: escalope_poulet.id, recipe_id: recipe13.id, quantity: 125)
Preparation.create!(ingredient_id: lait_de_coco.id, recipe_id: recipe13.id, quantity: 100)
Preparation.create!(ingredient_id: coriandre_fraiche.id, recipe_id: recipe13.id, quantity: 2)
Preparation.create!(ingredient_id: sauce_poisson_thai.id, recipe_id: recipe13.id, quantity: 1)
Preparation.create!(ingredient_id: moule.id, recipe_id: recipe14.id, quantity: 1)
Preparation.create!(ingredient_id: beurre_doux.id, recipe_id: recipe14.id, quantity: 7)
Preparation.create!(ingredient_id: échalotte.id, recipe_id: recipe14.id, quantity: 1)
Preparation.create!(ingredient_id: vin_blanc.id, recipe_id: recipe14.id, quantity: 4)
Preparation.create!(ingredient_id: farine.id, recipe_id: recipe14.id, quantity: 1)
Preparation.create!(ingredient_id: persil.id, recipe_id: recipe14.id, quantity: 2)
Preparation.create!(ingredient_id: paupiettes_de_veau.id, recipe_id: recipe15.id, quantity: 1)
Preparation.create!(ingredient_id: lardon.id, recipe_id: recipe15.id, quantity: 62)
Preparation.create!(ingredient_id: champignons.id, recipe_id: recipe15.id, quantity: 38)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe15.id, quantity: 25)
Preparation.create!(ingredient_id: échalotte.id, recipe_id: recipe15.id, quantity: 1)
Preparation.create!(ingredient_id: ail.id, recipe_id: recipe15.id, quantity: 1)
Preparation.create!(ingredient_id: wisky.id, recipe_id: recipe15.id, quantity: 10)
Preparation.create!(ingredient_id: ail.id, recipe_id: recipe16.id, quantity: 3)
Preparation.create!(ingredient_id: thym.id, recipe_id: recipe16.id, quantity: 2)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe16.id, quantity: 3)
Preparation.create!(ingredient_id: miel.id, recipe_id: recipe16.id, quantity: 1)
Preparation.create!(ingredient_id: riz.id, recipe_id: recipe17.id, quantity: 87)
Preparation.create!(ingredient_id: potiron.id, recipe_id: recipe17.id, quantity: 125)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe17.id, quantity: 25)
Preparation.create!(ingredient_id: cube_bouillon.id, recipe_id: recipe17.id, quantity: 1)
Preparation.create!(ingredient_id: beurre_doux.id, recipe_id: recipe17.id, quantity: 10)
Preparation.create!(ingredient_id: lait.id, recipe_id: recipe17.id, quantity: 62)
Preparation.create!(ingredient_id: parmesan.id, recipe_id: recipe17.id, quantity: 3)
Preparation.create!(ingredient_id: persil.id, recipe_id: recipe17.id, quantity: 1)
Preparation.create!(ingredient_id: poivron_rouge.id, recipe_id: recipe18.id, quantity: 1)
Preparation.create!(ingredient_id: persil.id, recipe_id: recipe18.id, quantity: 1)
Preparation.create!(ingredient_id: coriandre_fraiche.id, recipe_id: recipe18.id, quantity: 1)
Preparation.create!(ingredient_id: aneth.id, recipe_id: recipe18.id, quantity: 1)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe18.id, quantity: 50)
Preparation.create!(ingredient_id: purée_de_tomate.id, recipe_id: recipe18.id, quantity: 10)
Preparation.create!(ingredient_id: riz.id, recipe_id: recipe18.id, quantity: 45)
Preparation.create!(ingredient_id: patate_douce.id, recipe_id: recipe19.id, quantity: 125)
Preparation.create!(ingredient_id: farine.id, recipe_id: recipe19.id, quantity: 35)
Preparation.create!(ingredient_id: fécule_de_pomme_de_terre.id, recipe_id: recipe19.id, quantity: 22)
Preparation.create!(ingredient_id: oeuf.id, recipe_id: recipe19.id, quantity: 1)
Preparation.create!(ingredient_id: muscade_rapée.id, recipe_id: recipe19.id, quantity: 1)
Preparation.create!(ingredient_id: crème_fraiche_épaisse.id, recipe_id: recipe19.id, quantity: 15)
Preparation.create!(ingredient_id: parmesan.id, recipe_id: recipe19.id, quantity: 3)
Preparation.create!(ingredient_id: basilic.id, recipe_id: recipe19.id, quantity: 3)
Preparation.create!(ingredient_id: beurre_doux.id, recipe_id: recipe19.id, quantity: 5)
Preparation.create!(ingredient_id: pommes_de_terre.id, recipe_id: recipe20.id, quantity: 2)
Preparation.create!(ingredient_id: carotte.id, recipe_id: recipe20.id, quantity: 1)
Preparation.create!(ingredient_id: brocoli.id, recipe_id: recipe20.id, quantity: 75)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe20.id, quantity: 16)
Preparation.create!(ingredient_id: tomates_pelées.id, recipe_id: recipe20.id, quantity: 100)
Preparation.create!(ingredient_id: beurre_doux.id, recipe_id: recipe20.id, quantity: 25)
Preparation.create!(ingredient_id: lait.id, recipe_id: recipe20.id, quantity: 40)
Preparation.create!(ingredient_id: oeuf.id, recipe_id: recipe20.id, quantity: 1)
Preparation.create!(ingredient_id: bouillon_legume.id, recipe_id: recipe20.id, quantity: 40)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe20.id, quantity: 1)
Preparation.create!(ingredient_id: chapelure.id, recipe_id: recipe20.id, quantity: 25)
Preparation.create!(ingredient_id: aubergine.id, recipe_id: recipe21.id, quantity: 1)
Preparation.create!(ingredient_id: mozzarella.id, recipe_id: recipe21.id, quantity: 112)
Preparation.create!(ingredient_id: tomates_pelées.id, recipe_id: recipe21.id, quantity: 100)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe21.id, quantity: 1)
Preparation.create!(ingredient_id: thym.id, recipe_id: recipe21.id, quantity: 1)
Preparation.create!(ingredient_id: basilic.id, recipe_id: recipe21.id, quantity: 4)
Preparation.create!(ingredient_id: persil.id, recipe_id: recipe21.id, quantity: 3)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe22.id, quantity: 16)
Preparation.create!(ingredient_id: poireau.id, recipe_id: recipe22.id, quantity: 1)
Preparation.create!(ingredient_id: carotte.id, recipe_id: recipe22.id, quantity: 1)
Preparation.create!(ingredient_id: courgette.id, recipe_id: recipe22.id, quantity: 1)
Preparation.create!(ingredient_id: champignons_de_paris.id, recipe_id: recipe22.id, quantity: 62)
Preparation.create!(ingredient_id: poivron_rouge.id, recipe_id: recipe22.id, quantity: 1)
Preparation.create!(ingredient_id: nouilles_chinoises.id, recipe_id: recipe22.id, quantity: 88)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe22.id, quantity: 1)
Preparation.create!(ingredient_id: mélange_cinq_épices.id, recipe_id: recipe22.id, quantity: 2)
Preparation.create!(ingredient_id: sauce_soja_salée.id, recipe_id: recipe22.id, quantity: 1)
Preparation.create!(ingredient_id: carotte.id, recipe_id: recipe23.id, quantity: 1)
Preparation.create!(ingredient_id: courgette.id, recipe_id: recipe23.id, quantity: 1)
Preparation.create!(ingredient_id: patate_douce.id, recipe_id: recipe23.id, quantity: 300)
Preparation.create!(ingredient_id: échalotte.id, recipe_id: recipe23.id, quantity: 1)
Preparation.create!(ingredient_id: ail.id, recipe_id: recipe23.id, quantity: 1)
Preparation.create!(ingredient_id: lait_de_coco.id, recipe_id: recipe23.id, quantity: 75)
Preparation.create!(ingredient_id: pâte_curry_rouge.id, recipe_id: recipe23.id, quantity: 12)
Preparation.create!(ingredient_id: concentré_de_tomates.id, recipe_id: recipe23.id, quantity: 2)
Preparation.create!(ingredient_id: citron_vert.id, recipe_id: recipe23.id, quantity: 1)
Preparation.create!(ingredient_id: cumin.id, recipe_id: recipe23.id, quantity: 1)
Preparation.create!(ingredient_id: petit_piment_rouge.id, recipe_id: recipe23.id, quantity: 5)
Preparation.create!(ingredient_id: basilic.id, recipe_id: recipe23.id, quantity: 3)
Preparation.create!(ingredient_id: lentilles_corail.id, recipe_id: recipe24.id, quantity: 60)
Preparation.create!(ingredient_id: tomate.id, recipe_id: recipe24.id, quantity: 1)
Preparation.create!(ingredient_id: carotte.id, recipe_id: recipe24.id, quantity: 1)
Preparation.create!(ingredient_id: lait_de_coco.id, recipe_id: recipe24.id, quantity: 65)
Preparation.create!(ingredient_id: ail.id, recipe_id: recipe24.id, quantity: 1)
Preparation.create!(ingredient_id: concentré_de_tomates.id, recipe_id: recipe24.id, quantity: 1)
Preparation.create!(ingredient_id: curcuma.id, recipe_id: recipe24.id, quantity: 2)
Preparation.create!(ingredient_id: cumin.id, recipe_id: recipe24.id, quantity: 2)
Preparation.create!(ingredient_id: gingembre_frais.id, recipe_id: recipe24.id, quantity: 6)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe24.id, quantity: 1)
Preparation.create!(ingredient_id: tortillas_pour_tacos.id, recipe_id: recipe25.id, quantity: 2)
Preparation.create!(ingredient_id: oignon_blanc.id, recipe_id: recipe25.id, quantity: 25)
Preparation.create!(ingredient_id: tomate.id, recipe_id: recipe25.id, quantity: 1)
Preparation.create!(ingredient_id: coulis_tomate.id, recipe_id: recipe25.id, quantity: 90)
Preparation.create!(ingredient_id: boeuf_haché.id, recipe_id: recipe25.id, quantity: 62)
Preparation.create!(ingredient_id: haricots_rouges.id, recipe_id: recipe25.id, quantity: 125)
Preparation.create!(ingredient_id: poivron_vert.id, recipe_id: recipe25.id, quantity: 1)
Preparation.create!(ingredient_id: laitue.id, recipe_id: recipe25.id, quantity: 2)
Preparation.create!(ingredient_id: cumin.id, recipe_id: recipe25.id, quantity: 2)
Preparation.create!(ingredient_id: tabasco.id, recipe_id: recipe25.id, quantity: 3)
Preparation.create!(ingredient_id: roti_de_veau.id, recipe_id: recipe26.id, quantity: 200)
Preparation.create!(ingredient_id: beurre_doux.id, recipe_id: recipe26.id, quantity: 6)
Preparation.create!(ingredient_id: oignon.id, recipe_id: recipe26.id, quantity: 25)
Preparation.create!(ingredient_id: fond_de_veau.id, recipe_id: recipe26.id, quantity: 1)
Preparation.create!(ingredient_id: vin_blanc.id, recipe_id: recipe26.id, quantity: 20)
Preparation.create!(ingredient_id: herbe_provence.id, recipe_id: recipe26.id, quantity: 2)
Preparation.create!(ingredient_id: basilic.id, recipe_id: recipe26.id, quantity: 4)
Preparation.create!(ingredient_id: champignons_de_paris.id, recipe_id: recipe26.id, quantity: 85)
Preparation.create!(ingredient_id: queue_de_lotte.id, recipe_id: recipe27.id, quantity: 250)
Preparation.create!(ingredient_id: tomates_pelées.id, recipe_id: recipe27.id, quantity: 60)
Preparation.create!(ingredient_id: échalotte.id, recipe_id: recipe27.id, quantity: 1)
Preparation.create!(ingredient_id: ail.id, recipe_id: recipe27.id, quantity: 1)
Preparation.create!(ingredient_id: oignons_grelons.id, recipe_id: recipe27.id, quantity: 3)
Preparation.create!(ingredient_id: vin_blanc.id, recipe_id: recipe27.id, quantity: 5)
Preparation.create!(ingredient_id: cognac.id, recipe_id: recipe27.id, quantity: 1)
Preparation.create!(ingredient_id: beurre_doux.id, recipe_id: recipe27.id, quantity: 5)
Preparation.create!(ingredient_id: huile_d_olive.id, recipe_id: recipe27.id, quantity: 1)
Preparation.create!(ingredient_id: piment_de_cayenne.id, recipe_id: recipe27.id, quantity: 1)
