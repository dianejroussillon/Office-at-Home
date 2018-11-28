require 'faker'

Flat.destroy_all
User.destroy_all
puts 'Creating Users'

diane = User.create!(email: 'diane@gmail.com', password: 'dianejr')
patience = User.create!(email: 'patience@gmail.com', password: 'patiencegst')
jules = User.create!(email: 'jules@gmail.com', password: 'julesbtx')
abdel = User.create!(email: 'abdel@gmail.com', password: 'abdel21')

puts 'Creating flats'


flats_array =[]
20.times do
  my_hash = {
    user: User.order("RANDOM()").first,
    name: Faker::Add/bookingsress.city,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph_by_chars(rand(250..500), false),
    price_per_day: rand(50..200)
  }
  flats_array << my_hash
end
Flat.create!(flats_array)

london = Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_day: 75,
  user: diane
)

paris = Flat.create!(
  name: 'small but nice flat Paris',
  address: '16 villa Gaudelet',
  description: 'super endroit pour des vacs',
  price_per_day: 90,
  user: patience
)

nantes = Flat.create!(
  name: 'Vieille grotte pourrie Nantes',
  address: '5 ave du General Leclerc',
  description: 'appartement pourri sans vue et sans fenêtre',
  price_per_day: 15,
  user: jules
)

montmartre = Flat.create!(
  name: 'Hôtel Particulier Montmartre',
  address: '11 rue Caulaincourt Paris ',
  description: 'petit cocon',
  price_per_day: 100,
  user: abdel
)
