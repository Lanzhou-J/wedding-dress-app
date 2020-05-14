# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative "data/neckline_data"
require_relative "data/silhouette_data"
require_relative "data/sleeve_data"
require_relative "data/length_data"
require_relative "data/user_data"

User.destroy_all
Shop.destroy_all
Dress.destroy_all
Size.destroy_all
Silhouette.destroy_all
Sleeve.destroy_all
Length.destroy_all
Neckline.destroy_all

puts "Seeding Users"

users.each do |user|
  user_record = User.create(user)
end
puts "Successfully seeded Users ✅"

puts "Seeding Necklines"

necklines.each do |neckline|
  neckline_record = Neckline.create(neckline)
end
puts "Successfully seeded Necklines ✅"

puts "-" * 20
puts "Seeding Silhouettes"
silhouettes.each do |silhouette|
  silhouette_record = Silhouette.create(silhouette)
end
puts "Successfully seeded Silhouettes ✅"

puts "-" * 20
puts "Seeding Sleeves"
sleeves.each do |sleeve|
  sleeve_record = Sleeve.create(sleeve)
end
puts "Successfully seeded Sleeves ✅"

puts "-" * 20
puts "Seeding Lengths"
lengths.each do |length|
  length_record = Length.create(length)
end
puts "Successfully seeded Lengths ✅"

puts "-" * 20
puts "Seeding Sizes"
n = 6
while n != 28
  Size.create(size: n)
  n += 2
end
puts "Successfully seeded Sizes ✅"

puts "-" * 20
puts "Seeding Shops"
shop = Shop.create(name: 'Obride Bridal House', opening_time: Date.today, merchant_or_personal: 'merchant')

shop = Shop.create(name: 'Eternal Bridal', opening_time: Date.today, merchant_or_personal: 'merchant', user_id: 1)

shop = Shop.create(name: "Lan's shop", opening_time: Date.today, merchant_or_personal: 'personal', user_id: 3)
puts "Successfully seeded Shops ✅"

puts "-" * 20
puts "Seeding Dresses"
dress = Dress.create(
  name: '2020 New style light elegant wedding dress',
  price: 80000,
  color: 'white',
  texture: 'lace',
  shop_id: 1,
  size_id: 1,
  length_id: 1,
  shipping_cost: 2000,
  neckline_id: 1,
  silhouette_id: 1,
  sleeve_id: 1
)

dress = Dress.create(
  name: 'SABRINA ROSA CLARA COUTURE COLLECTION',
  price: 300000,
  color: 'white',
  texture: 'lace',
  shop_id: 2,
  size_id: 3,
  length_id: 5,
  shipping_cost: 2000,
  neckline_id: 1,
  silhouette_id: 1,
  sleeve_id: 1
)

random_num = rand(1..5)
4.times do
  dress = Dress.create(
    name: "Dress#{Dress.count + 1}",
    price: 100000,
    shipping_cost:2000,
    color: 'white',
    texture: 'satin',
    shop_id: rand(1..2),
    size_id: random_num,
    length_id: random_num,
    neckline_id: random_num,
    silhouette_id: random_num,
    sleeve_id: random_num
  )
end

puts "Successfully seeded Dresses ✅"