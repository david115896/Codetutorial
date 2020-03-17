# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Style.destroy_all
Language.destroy_all

Style.create(name: "Text")
Style.create(name: "Chapter")
Style.create(name: "Code")
Style.create(name: "Image")
Style.create(name: "Reference")

Language.create(name: "Ruby on Rails")
Language.create(name: "HTML")
Language.create(name: "CSS")
Language.create(name: "JS Vanilla")
Language.create(name: "Jquery")
Language.create(name: "Ajax")
Language.create(name: "Python")

puts "Styles and languages created"