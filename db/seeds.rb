# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Destroying users..."
User.destroy_all

puts "Creating users..."

user1 = User.new(
  first_name: 'Kaan',
  last_name: 'Zenginer',
  username: 'kaanij',
  email: 'kaan@wepick.com',
  password: '123456'
)

file = URI.open("app/assets/images/users/kaan.jpeg")

user1.photo.attach(io: file, filename: "kaan.jpeg", content_type: "image/jpeg")
user1.save

user2 = User.new(
  first_name: "Isabel",
  last_name: 'Bruda',
  username: 'diebrudie',
  email: 'isabel@wepick.com',
  password: '123456'
)

file2 = URI.open("app/assets/images/users/isabel.jpeg")

user2.photo.attach(io: file2, filename: "isabel.jpeg", content_type: "image/jpeg")
user2.save

user3 = User.new(
  first_name: 'Beata',
  last_name: 'Volker',
  username: 'beataregina',
  email: 'beata@wepick.com',
  password: '123456'
)

file3 = URI.open("app/assets/images/users/beata.jpeg")

user3.photo.attach(io: file3, filename: "beata.jpeg", content_type: "image/jpeg")
user3.save

user4 = User.new(
  first_name: 'Sergio',
  last_name: 'Pizarro',
  username: 'SergioPizarro',
  email: 'sergio@wepick.com',
  password: '123456'
)

file4 = URI.open("app/assets/images/users/sergio.jpeg")

user4.photo.attach(io: file4, filename: "sergio.jpeg", content_type: "image/jpeg")
user4.save

puts "Finished creating users!"

# ACTIVITY TIME BABYYYYY

puts "Destroying activities..."
Activity.destroy_all

puts "Creating activities..."

activity1 = Activity.new(
  title: 'Birthday BBQ in the park',
  activity_type: 'Birthday',
  description: 'Which park should we go to?',
  activity_date: '2022/07/07',
  deadline_date: '2022/07/01'
)

activity1.user = user1

file = URI.open("app/assets/images/activities/barbecue.jpeg")

activity1.photo.attach(io: file, filename: "barbecue.jpeg", content_type: "image/jpeg")
activity1.save

activity2 = Activity.new(
  title: 'Boat party',
  activity_type: 'Graduation',
  description: 'What should we do on the boat for graduation from Le Wagon?',
  activity_date: '2022/07/10',
  deadline_date: '2022/07/03'
)

activity2.user = user1

file = URI.open("app/assets/images/activities/boat.jpeg")

activity2.photo.attach(io: file, filename: "boat.jpeg", content_type: "image/jpeg")
activity2.save

activity3 = Activity.new(
  title: 'Movie night at the cinema',
  activity_type: 'Cinema',
  description: 'What should we watch at the cinema and where?',
  activity_date: '2022/06/10',
  deadline_date: '2022/06/03'
)

activity3.user = user1

file = URI.open("app/assets/images/activities/cinema.jpeg")

activity3.photo.attach(io: file, filename: "cinema.jpeg", content_type: "image/jpeg")
activity3.save

activity4 = Activity.new(
  title: 'Private dance class at home',
  activity_type: 'Dance',
  description: 'I want to bring a dance instructor to the house! What type of dance should we learn?',
  activity_date: '2022/06/20',
  deadline_date: '2022/06/10'
)

activity4.user = user1

file = URI.open("app/assets/images/activities/dance.jpeg")

activity4.photo.attach(io: file, filename: "dance.jpeg", content_type: "image/jpeg")
activity4.save

activity5 = Activity.new(
  title: 'MMA fight night',
  activity_type: 'Combat Sports',
  description: 'I want to go and watch grown men wrestle and beat the shit out of each other!',
  activity_date: '2022/08/20',
  deadline_date: '2022/07/10'
)

activity5.user = user2

file = URI.open("app/assets/images/activities/mma.jpeg")

activity5.photo.attach(io: file, filename: "mma.jpeg", content_type: "image/jpeg")
activity5.save

activity6 = Activity.new(
  title: 'Burger eating contest',
  activity_type: 'Food',
  description: 'I want to organise a burger eating competition!',
  activity_date: '2022/09/20',
  deadline_date: '2022/08/10'
)

activity6.user = user2

file = URI.open("app/assets/images/activities/burger.jpeg")

activity6.photo.attach(io: file, filename: "burger.jpeg", content_type: "image/jpeg")
activity6.save

activity7 = Activity.new(
  title: 'Wine tasting',
  activity_type: 'Drinks',
  description: 'I want to organise a wine tasting evening.',
  activity_date: '2022/07/25',
  deadline_date: '2022/07/18'
)

activity7.user = user2

file = URI.open("app/assets/images/activities/wine.jpeg")

activity7.photo.attach(io: file, filename: "wine.jpeg", content_type: "image/jpeg")
activity7.save

activity8 = Activity.new(
  title: 'Planking',
  activity_type: 'Silly',
  description: 'I want to organise a planking contest',
  activity_date: '2022/07/25',
  deadline_date: '2022/07/18'
)

activity8.user = user2

file = URI.open("app/assets/images/activities/planking.jpeg")

activity8.photo.attach(io: file, filename: "planking.jpeg", content_type: "image/jpeg")
activity8.save

activity9 = Activity.new(
  title: 'Rock paper scissors contest!',
  activity_type: 'Silly',
  description: 'Who is the best? We shall find out',
  activity_date: '2022/06/30',
  deadline_date: '2022/06/20'
)

activity9.user = user3

file = URI.open("app/assets/images/activities/rock.jpeg")

activity9.photo.attach(io: file, filename: "rock.jpeg", content_type: "image/jpeg")
activity9.save

activity10 = Activity.new(
  title: 'Rock climbing trip',
  activity_type: 'Sports',
  description: 'Only the best climbers can join. Where should we go?',
  activity_date: '2022/06/30',
  deadline_date: '2022/06/20'
)

activity10.user = user3

file = URI.open("app/assets/images/activities/climbing.jpeg")

activity10.photo.attach(io: file, filename: "climbing.jpeg", content_type: "image/jpeg")
activity10.save

activity11 = Activity.new(
  title: 'Night out in chinatown!',
  activity_type: 'Restaurant',
  description: 'I really want to eat some chinese food. What do you think?',
  activity_date: '2022/07/31',
  deadline_date: '2022/07/20'
)

activity11.user = user3

file = URI.open("app/assets/images/activities/chinese.jpeg")

activity11.photo.attach(io: file, filename: "chinese.jpeg", content_type: "image/jpeg")
activity11.save

activity12 = Activity.new(
  title: 'Tour de France',
  activity_type: 'Sports',
  description: 'I really want to go to the Tour de France.',
  activity_date: '2022/10/18',
  deadline_date: '2022/10/01'
)

activity12.user = user3

file = URI.open("app/assets/images/activities/cycling.jpeg")

activity12.photo.attach(io: file, filename: "cycling.jpeg", content_type: "image/jpeg")
activity12.save

activity13 = Activity.new(
  title: 'Formula One racing',
  activity_type: 'Sports',
  description: 'I really want to go see Lewis Hamilton racing.',
  activity_date: '2022/11/18',
  deadline_date: '2022/08/01'
)

activity13.user = user4

file = URI.open("app/assets/images/activities/formula1.jpeg")

activity13.photo.attach(io: file, filename: "formula1.jpeg", content_type: "image/jpeg")
activity13.save

activity14 = Activity.new(
  title: 'A night at the circus!',
  activity_type: 'Entertainment',
  description: 'I really want to go see some clowns.',
  activity_date: '2022/09/18',
  deadline_date: '2022/09/01'
)

activity14.user = user4

file = URI.open("app/assets/images/activities/circus.jpeg")

activity14.photo.attach(io: file, filename: "circus.jpeg", content_type: "image/jpeg")
activity14.save

puts "Finished creating activities!"

