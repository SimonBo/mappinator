# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = ["Gyms", "School", "Drug store", "Sex", "Family"]
category.each do |cat|
  Category.create(name: cat)
end

tags = ["Humber Only", "Seneca Only", "Repeats Monthly", "Addiction"]
tags.each do |tag|
  Tag.create(name: tag)
end

10.times do |poi|
  Poi.create(name: Faker::Company.name, address: Faker::Address.street_address, description: Faker::Lorem.sentence, category_id: rand(1..5))
end