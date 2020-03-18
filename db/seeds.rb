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

Language.create(name: "Ruby on Rails", rouge_name: "erb")
Language.create(name: "Ruby", rouge_name: "ruby")
Language.create(name: "HTML", rouge_name: "html")
Language.create(name: "CSS", rouge_name: "css")
Language.create(name: "SCSS", rouge_name: "scss")
Language.create(name: "JS Vanilla", rouge_name: "javascript")
Language.create(name: "Jquery", rouge_name: "javascript")
Language.create(name: "Ajax", rouge_name: "javascript")
Language.create(name: "Python", rouge_name: "python")

puts "Styles and languages created"