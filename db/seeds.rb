# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


		photos = Photo.create([{title: "The church", artist: "Sergey", url: "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"},
		                       {title: "Sea Power", artist: "Stephen", url: "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"},
		                      {title: "Poppies", artist: "John", url: "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"}])

