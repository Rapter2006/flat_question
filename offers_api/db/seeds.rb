# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Test organizations
org = Organization.find_by(name: "Test org")
if org.nil?
  org = Organization.new(name: "Test org", contacts: {name: "Василий", contact: "+79132095505"}.to_json)
  org.save
end


#offer types
[
  {name: "Продажа", system_name: "sale"},
  {name: "Аренда", system_name: "rent"}
].each do |type|
  OfferType.find_or_create_by( type )
end

#types of realty
real_estate_type = Vocabulary.find_or_create_by( name: "Типы недвижимости", system_name: "real_estate_type" )
[
  {name: "Коммерческая недвижимость", system_name: "commercial_realty" },
  {name: "Квартира", system_name: "flat"},
  {name: "Дом, коттедж", system_name: "house"},
  {name: "Комната", system_name: "room"}
].each do |term|
  term[:vocabulary_id] = real_estate_type.id
  Term.find_or_create_by( term )
end

#subtypes of commercial realty
commercial_realty = Term.find_by(system_name: "commercial_realty")
commercial_realty_subtype = Vocabulary.find_or_create_by( 
  name: "Подтипы коммерческой недвижимости", 
  system_name: "commercial_realty_subtype", 
  parent_id: commercial_realty.id
)

[
  {name: "Офис", system_name: "office" },
  {name: "Склад", system_name: "warehouse"}
].each do |term|
  term[:vocabulary_id] = commercial_realty_subtype.id
  Term.find_or_create_by( term )
end


#subtypes of flats
flat = Term.find_by(system_name: "flat")
flat_subtype = Vocabulary.find_or_create_by( 
  name: "Подтипы квартир", 
  system_name: "flat_subtype", 
  parent_id: flat.id
)

[
  {name: "Однокомнатная", system_name: "1room" },
  {name: "Двухкомнатная", system_name: "2rooms"},
  {name: "Трёххкомнатная", system_name: "3rooms"},
  {name: "Четырёхкомнатная", system_name: "4rooms"},
  {name: "Многокомнатная", system_name: "many_room"}
].each do |term|
  term[:vocabulary_id] = flat_subtype.id
  Term.find_or_create_by( term )
end

#subtypes of houses
house = Term.find_by(system_name: "house")
house_subtype = Vocabulary.find_or_create_by( 
  name: "Подтипы домов", 
  system_name: "house", 
  parent_id: house.id
)

[
  {name: "Дом", system_name: "home" },
  {name: "Часть дома", system_name: "home_part"},
  {name: "Участок", system_name: "garden"},
  {name: "Таунхаус", system_name: "townhouse"}
].each do |term|
  term[:vocabulary_id] = house_subtype.id
  Term.find_or_create_by( term )
end
