puts 'Creating Users'
User.destroy_all
users_attributes = [
{ email: 'bob33@sponge.com',
  password: 'squarepants',
},{ email: 'james33@bond.com',
  password: 'goldeneye',
}
]

User.create!(users_attributes)


puts 'Creating flats'
Flat.destroy_all
flats_attributes = [
  {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_day: 75,
  user: 13,
  },
  {
  name: 'small but nice flat Paris',
  address: '16 villa Gaudelet',
  description: 'super endroit pour des vacs',
  price_per_day: 90,
  user: 13,
  },
  {
  name: 'Vieille grotte pourrie Nantes',
  address: '5 ave du General Leclerc',
  description: 'appartement pourri sans vue et sans fenêtre',
  price_per_day: 15,
  user: 13,


  },
  {
  name: 'Hôtel Particulier Montmartre',
  address: '11 rue Caulaincourt Paris ',
  description: 'petit cocon',
  price_per_day: 100,
  user: 13,

  }
]

Flat.create!(flats_attributes)
