# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


30.times do
  Brew.create(
    blend_name: Faker::Coffee.blend_name,
    origin: Faker::Coffee.origin,
    notes: Faker::Coffee.notes,
    strength: rand(1..5)
  )
end

30.times do
  Customer.create(
    name: Faker::Name.name_with_middle
  )
end

60.times do
  Purchase.create(
    brew_id: rand(1..30),
    customer_id: rand(1..30)
  )
end

# Purchase.create(brew_id: 1, customer_id: 9)
# Purchase.create(brew_id: 2, customer_id: 8)
# Purchase.create(brew_id: 3, customer_id: 7)
# Purchase.create(brew_id: 4, customer_id: 6)
# Purchase.create(brew_id: 3, customer_id: 5)
# Purchase.create(brew_id: 4, customer_id: 5)
# Purchase.create(brew_id: 5, customer_id: 4)
# Purchase.create(brew_id: 6, customer_id: 3)
# Purchase.create(brew_id: 7, customer_id: 2)
# Purchase.create(brew_id: 5, customer_id: 1)
