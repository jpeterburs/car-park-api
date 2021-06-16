PermanentParker.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  street_name: Faker::Address.street_name,
  building_number: Faker::Address.building_number,
  zip: Faker::Address.zip,
  city: Faker::Address.state
)
