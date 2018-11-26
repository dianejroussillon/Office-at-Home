puts 'Creating Users'
users_attributes = [
{ email: 'bob1@sponge.com',
  first_name: 'bob',
  last_name: 'sponge',
},{ email: 'james1@bond.com',
  first_name: 'james',
  last_name: 'bond',
}
]

User.create!(users_attributes)


puts 'Creating flats'
flats_attributes = [
  {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_day: 75,
  user_id: 1,

  },
  {
  name: 'small but nice flat Paris',
  address: '16 villa Gaudelet',
  description: 'super endroit pour des vacs',
  price_per_day: 90,
  user_id: 1,


  },
  {
  name: 'Vieille grotte pourrie Nantes',
  address: '5 ave du General Leclerc',
  description: 'appartement pourri sans vue et sans fenêtre',
  price_per_day: 15,
  user_id: 1,


  },
  {
  name: 'Hôtel Particulier Montmartre',
  address: '11 rue Caulaincourt Paris ',
  description: 'petit cocon',
  price_per_day: 100,
  user_id: 2,

  }
]

Flat.create!(flats_attributes)
