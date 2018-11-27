Flat.destroy_all
User.destroy_all
puts 'Creating Users'

diane = User.create!(email: 'diane@gmail.com', password: 'dianejr')
patience = User.create!(email: 'patience@gmail.com', password: 'patiencegst')
jules = User.create!(email: 'jules@gmail.com', password: 'julesbtx')
abdel = User.create!(email: 'abdel@gmail.com', password: 'abdel21')

puts 'Creating flats'

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

puts "Create Reviews"
flat_1 = Flat.find(15)
flat_2 = Flat.find(16)
review_1 = Review.create(content: "un très bel appartement", rating: 5)
review_2 = Review.create(content: "super hôte", rating: 4)
review_1.flat = flat_1
review_2.flat = flat_1
review_3 = Review.create(content: "un super appart", rating: 5)
review_3.flat = flat_2
