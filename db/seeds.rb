# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all
House.destroy_all

gryffindor = House.create(name:"Gryffindor", img_url:"http://imgs1.wikia.nocookie.net/__cb20120922143611/harrypotter/imgs/7/70/G_final.jpg")
hufflepuff = House.create(name:"Hufflepuff", img_url:"http://imgs3.wikia.nocookie.net/__cb20111027164827/harrypotter/imgs/3/3f/H_final.jpg")
ravenclaw = House.create(name:"Ravenclaw", img_url:"http://imgs2.wikia.nocookie.net/__cb20111021043857/harrypotter/imgs/d/da/R_final.jpg")
slytherin = House.create(name:"Slytherin", img_url:"http://imgs3.wikia.nocookie.net/__cb20111027165214/harrypotter/imgs/d/da/S_final.jpg")

harry = Student.create(name: "Harry Potter", img_url:"http://imgs1.wikia.nocookie.net/__cb20111110202524/harrypotter/imgs/thumb/d/d4/Dhharryroomhighreso.jpg/250px-Dhharryroomhighreso.jpg", house: gryffindor)
ron = Student.create(name: "Ron Weasley", img_url:"http://imgs4.wikia.nocookie.net/__cb20090712085217/harrypotter/imgs/9/99/Ron_DH.PNG", house: gryffindor)
hermione = Student.create(name: "Hermione Granger", img_url:"http://imgs2.wikia.nocookie.net/__cb20120512155742/harrypotter/imgs/thumb/9/95/DeathlyPromo_Hermione.PNG/250px-DeathlyPromo_Hermione.PNG", house: gryffindor)

luna = Student.create(name: "Luna Lovegood", img_url:"http://imgs1.wikia.nocookie.net/__cb20101113121321/harrypotter/imgs/thumb/4/49/Luna_profile.jpg/250px-Luna_profile.jpg", house: ravenclaw)
cho = Student.create(name: "Cho Chang", img_url:"http://imgs3.wikia.nocookie.net/__cb20081103140303/harrypotter/imgs/thumb/c/c1/Cho_Chang_Profile.JPG/250px-Cho_Chang_Profile.JPG", house: ravenclaw)

cedric = Student.create(name: "Cedric Diggory", img_url:"http://imgs1.wikia.nocookie.net/__cb20111015180906/harrypotter/imgs/thumb/c/c5/Cedric.jpg/250px-Cedric.jpg", house: hufflepuff)

draco = Student.create(name: "Draco Malfoy", img_url:"http://imgs1.wikia.nocookie.net/__cb20100925140918/harrypotter/imgs/thumb/2/21/Dracodh.jpg/250px-Dracodh.jpg", house: slytherin)
pansy = Student.create(name: "Pansy Parkinson", img_url:"http://imgs1.wikia.nocookie.net/__cb20110801070343/harrypotter/imgs/thumb/6/62/Pansyinfobox.jpg/250px-Pansyinfobox.jpg", house: slytherin)
