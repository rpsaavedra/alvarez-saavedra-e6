# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	


  Article.create(name:"Head & Shoulders Classic Clean"  , price: 300 , image:"classic.jpg"  , kind: "shampoo!!h&h"  , stock: 400)
  Article.create(name:"Head & Shoulders Apple fresh"  , price: 300 , image:"apple.jpg"  , kind: "shampoo!!h&h"  , stock: 400)
  Article.create(name:"Head & Shoulders Smooth & Silky"  , price: 300 , image:"smooth.jpg"  , kind: "shampoo!!h&h"  , stock: 400)
  Article.create(name:"Head & Shoulders Citrus fresh"  , price: 300 , image:"citrus.jpg"  , kind: "shampoo!!h&h"  , stock: 400)


   Article.create(name:"SEDAL Ceramidas"  , price: 300 , image:"ceramidas.jpg"  , kind: "shampoo!!sedal"  , stock: 400)
  Article.create(name:"SEDAL Liso"  , price: 300 , image:"liso.jpg"  , kind: "shampoo!!sedal"  , stock: 400)
  Article.create(name:"SEDAL miel y germen de trigo"  , price: 300 , image:"miel.jpg"  , kind: "shampoo!!sedal"  , stock: 400)


   Article.create(name:"Pantene Nutritiva"  , price: 300 , image:"nutritiva.jpg"  , kind: "shampoo!!pantene"  , stock: 400)
  Article.create(name:"Pantene Reparacion"  , price: 300 , image:"repara.jpg"  , kind: "shampoo!!pantene"  , stock: 400)
  Article.create(name:"Pantene restauración"  , price: 300 , image:"restauracion.jpg"  , kind: "shampoo!!pantene"  , stock: 400)

  Article.create(name:"Pintura de un shampoo"  , price: 300 , image:"citrus.jpg"  , kind: "cuadro"  , stock: 400)
  Article.create(name:"Pintura de una Marilyn"  , price: 400 , image:"marilyn.jpg"  , kind: "cuadro"  , stock: 400)
  Article.create(name:"Autoretrato de Van_g"  , price: 300 , image:"van_g.jpg"  , kind: "cuadro"  , stock: 400)
  Article.create(name:"Pintura de unas botellas"  , price: 300 , image:"logox.jpg"  , kind: "cuadro"  , stock: 400)
  Article.create(name:"Pintura de nuestro logo"  , price: 300 , image:"logo.png"  , kind: "cuadro"  , stock: 400)


  User.create(name:"admin", email:"admin@jiji.com", password:"admin123", admin:1, question: "ramo favorito", answer:"web")

  Prom.create(name: 'Pantene restauración + Cuadro restaurado ecco', price: 2000 , prod_1: 1, prod_2:2, prod_3:0, prod_4:0, cant_1:1, cant_2: 1 , cant_3: 0 , cant_4: 0, image: "restaurar.jpg", date_start: Date.today, date_end: Date.today, valido: 1, string_otro:"", int_otro: 0)
  Prom.create(name: 'H&S LIso extremo+ Mona LIsa', price: 2500 , prod_1: 1, prod_2:2, prod_3:0, prod_4:0, cant_1:1, cant_2: 1 , cant_3: 0 , cant_4: 0, image: "headlisa.jpg", date_start: Date.today, date_end: Date.today, valido: 1, string_otro:"", int_otro: 0)
  Prom.create(name: '1 Pantene restauraciòn + Cuadro restaurado ecco', price: 2000 , prod_1: 1, prod_2:2, prod_3:0, prod_4:0, cant_1:1, cant_2: 1 , cant_3: 0 , cant_4: 0, image: "restaurar.jpg", date_start: Date.today, date_end: Date.today, valido: 1, string_otro:"", int_otro: 0)
  Prom.create(name: '2 H&S LIso extremo+ Mona LIsa', price: 2500 , prod_1: 1, prod_2:2, prod_3:0, prod_4:0, cant_1:1, cant_2: 1 , cant_3: 0 , cant_4: 0, image: "headlisa.jpg", date_start: Date.today, date_end: Date.today, valido: 1, string_otro:"", int_otro: 0)
  Prom.create(name: '3 Pantene restauraciòn + Cuadro restaurado ecco', price: 2000 , prod_1: 1, prod_2:2, prod_3:0, prod_4:0, cant_1:1, cant_2: 1 , cant_3: 0 , cant_4: 0, image: "restaurar.jpg", date_start: Date.today, date_end: Date.today, valido: 1, string_otro:"", int_otro: 0)
  Prom.create(name: '4 H&S LIso extremo+ Mona LIsa', price: 2500 , prod_1: 1, prod_2:2, prod_3:0, prod_4:0, cant_1:1, cant_2: 1 , cant_3: 0 , cant_4: 0, image: "headlisa.jpg", date_start: Date.today, date_end: Date.today, valido: 1, string_otro:"", int_otro: 0)