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