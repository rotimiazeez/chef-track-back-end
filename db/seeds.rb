# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  name: "User One",
  username: "user1",
  email: "user1@email.com"
)

User.create(
  name: "User Two",
  username: "user2",
  email: "user2@email.com"
)

User.create(
  name: "User Three",
  username: "user3",
  email: "user3@email.com"
)

Chef.create(
  name: 'Gordon Ramsey',
  description: 'A great chef with multiple michelin stars',
  price: 2500,
  image: "https://static.careers360.mobi/media/articles/uplo…froala_editor/images/2020/4/11/gordon-ramsay.webp",
  duration: 3,
  number_of_foods: 25
)

Chef.create(
  name: 'Jamie Oliver',
  description: 'A great chef with multiple michelin stars',
  price: 800,
  image: "https://static.careers360.mobi/media/articles/uplo…/froala_editor/images/2020/4/11/jamie-oliver.webp",
  duration: 1,
  number_of_foods: 3
)

Chef.create(
  name: 'Vikas Khanna',
  description: 'A great Indian chef with multiple michelin stars',
  price: 800,
  image: "https://static.careers360.mobi/media/articles/uploads/froala_editor/images/2020/4/11/vikas-khanna.webp",
  duration: 1,
  number_of_foods: 1
)

Chef.create(
  name: 'Akis Petretzikis',
  description: 'A great chef and a winner of MasterChef greece',
  price: 800,
  image: "https://static.careers360.mobi/media/presets/940X5…ala_editor/images/2020/4/11/akis-petretzikis.webp",
  duration: 4,
  number_of_foods: 5
)

Chef.create(
  name: 'Vicky Ratnani',
  description: 'He won the Indian Best Chef Of The Year in 2015',
  price: 800,
  image: "https://res.cloudinary.com/purnesh/image/upload/w_1000,f_auto,q_auto:eco,c_limit/vicky-ratnani-1.jpg",
  duration: 1,
  number_of_foods: 2
)

Chef.create(
  name: 'Marco Pierre White',
  description: 'A great chef also the youngest and first british to e awarded three michelin stars',
  price: 800,
  image: "https://static.careers360.mobi/media/articles/uploads/froala_editor/images/2020/4/11/marco-pierre-white.webp",
  duration: 3,
  number_of_foods: 4
)

10.times do 
  City.create(name:Faker::Address.city)
end

Reservation.create(
  user_id: 1,
  chef_id: 1,
  city_id: 1,
  start_date: "2022-01-12",
  end_date: "2022-04-11"
)

Reservation.create(
  user_id: 2,
  chef_id: 2,
  city_id: 2,
  start_date: "2022-01-15",
  end_date: "2022-02-14"
)

Reservation.create(
  user_id: 1,
  chef_id: 1,
  city_id: 4,
  start_date: "2022-05-5",
  end_date: "2022-08-4"

)