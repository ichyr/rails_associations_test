# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

VMILOSTY_NAMES = ["табірнитство І", "куховарення І", "мандрівнитство ІІ", "їзда верхи І", "плавання І", "якірнитство ІІ"]
INSTRUKTORS_NAMES = [ "Василь", "Христина", "Іван", "Петро", "Андрій", "Максим", "Оля" ]

VMILOSTY_NAMES.each { |name|
	Vmilist.create name: name
}

INSTRUKTORS_NAMES.each { |name| 
	Instruktor.create name: name
}
