# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  {name: "Продажа", system_name: "sale"},
  {name: "Аренда", system_name: "rent"}
].each do |type|
  OfferType.find_or_create_by( type )
end


real_estate_type = Vocabulary.find_or_create_by( name: "Типы недвижимости", system_name: "real_estate_type" )
[
  {name: "Коммерческая недвижимость", system_name: "commercial_realty" },
  {name: "Квартира", system_name: "flat"},
  {name: "Дом, коттедж", system_name: "house"},
  {name: "Комната", system_name: "room"}
].each do |term|
  term[:vocabulary] = real_estate_type
  Term.find_or_create_by( term )
end