# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative "data/neckline_data"
require_relative "data/silhouette_data"

Shop.destroy_all
Dress.destroy_all
Size.destroy_all
Silhouette.destroy_all
Sleeve.destroy_all
Length.destroy_all
Neckline.destroy_all

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

# shop = Shop.create(name: 'Obride Bridal House', opening_time: Date.today, merchant_or_personal: 'merchant')

# size = Size.create(size: 8)

# length = Length.create(length: 'mini')

# neckline = Neckline.create(style: 'V-neck')

# silhouette = Silhouette.create(style: 'A-line')

# sleeve = Sleeve.create(style: 'short-sleeve')

# subject { described_class.new(
#   name: '2020 New style light elegant wedding dress',
#   price: 80000,
#   color: 'white',
#   texture: 'lace',
#   shop_id: 1,
#   size_id: 1,
#   length_id: 1,
#   shipping_cost: 2000,
#   neckline_id: 1,
#   silhouette_id: 1,
#   sleeve_id: 1
# )}
