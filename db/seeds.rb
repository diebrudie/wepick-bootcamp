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
  activity_type: 'Party',
  description: 'Which park should we go to?',
  activity_date: '2022/07/07',
  deadline_date: '2022/07/01'
)

activity1.user = user1

file = URI.open("app/assets/images/activities/barbecue.jpeg")

activity1.photo.attach(io: file, filename: "barbecue.jpeg", content_type: "image/jpeg")
activity1.save!

activity2 = Activity.new(
  title: 'Boat party',
  activity_type: 'Event',
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
  activity_type: 'Movies',
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
  activity_type: 'Entertainment',
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
  activity_type: 'Entertainment',
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
  activity_type: 'Traveling',
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
  activity_type: 'Food',
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
  activity_type: 'Travelling',
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
  activity_type: 'Entertainment',
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

# TIME FOR SOME MUHFUCKIN PROPOSALS

puts "Destroying proposals..."
Proposal.destroy_all

puts "Creating proposals..."

proposal1 = Proposal.new(
  title: 'Hasenheide',
  description: 'I really love dangerous parks full of drug dealers.'
)

proposal1.user = user1
proposal1.activity = activity1
proposal1.save

proposal2 = Proposal.new(
  title: 'Tiergarten',
  description: 'Easily the most beautiful park in Berlin.'
)

proposal2.user = user2
proposal2.activity = activity1
proposal2.save

proposal3 = Proposal.new(
  title: 'Volkspark Friedrichshain',
  description: ' No tourists in this park and it has volleyball courts! '
)

proposal3.user = user3
proposal3.activity = activity1
proposal3.save

proposal4 = Proposal.new(
  title: 'Gorlitzer Park',
  description: 'Ugly but such a good location. '
)

proposal4.user = user4
proposal4.activity = activity1
proposal4.save

proposal5 = Proposal.new(
  title: 'Hire a DJ and self-cater',
  description: 'We can bring our own drinks and turntables/speakers'
)

proposal5.user = user1
proposal5.activity = activity2
proposal5.save

proposal6 = Proposal.new(
  title: 'Inflatable animals and games',
  description: 'Lets bring blow up toys and stop for swimming breaks along the way'
)

proposal6.user = user2
proposal6.activity = activity2
proposal6.save

proposal7 = Proposal.new(
  title: 'I want to go to the baltic sea',
  description: 'It would be so nice!'
)

proposal7.user = user3
proposal7.activity = activity2
proposal7.save

proposal8 = Proposal.new(
  title: 'Hire a cocktail maker',
  description: 'There are barmen who you can hire to do all the work of making drinks. We just graduated so we deserve it'
)

proposal8.user = user4
proposal8.activity = activity2
proposal8.save

proposal9 = Proposal.new(
  title: 'Batman',
  description: 'A nice twist on a classic. Great cast too!'
)

proposal9.user = user1
proposal9.activity = activity3
proposal9.save

proposal10 = Proposal.new(
  title: 'Dune',
  description: 'Visually stunning. One of the best Sci-fi films in the last decade.'
)

proposal10.user = user2
proposal10.activity = activity3
proposal10.save

proposal11 = Proposal.new(
  title: 'Top Gun: Maverick',
  description: 'Americaaaaaaaaaaa! F yeah! Coming again to save the muh effing day yeah!'
)

proposal11.user = user3
proposal11.activity = activity3
proposal11.save

proposal12 = Proposal.new(
  title: 'Downton Abbey: A New Era',
  description: 'Shout out to all the period drama lovers!'
)

proposal12.user = user4
proposal12.activity = activity3
proposal12.save

puts "Finished creating proposals!"

puts "Destroying participants..."
Participant.destroy_all

puts "Creating participants..."

user_array = [user1, user2, user3, user4]

user_array.each do |user|
  participant1 = Participant.new
  participant1.user = user
  participant1.activity = activity1
  participant1.save

  participant2 = Participant.new
  participant2.user = user
  participant2.activity = activity2
  participant2.save

  participant3 = Participant.new
  participant3.user = user
  participant3.activity = activity3
  participant3.save

  participant4 = Participant.new
  participant4.user = user
  participant4.activity = activity4
  participant4.save

  participant5 = Participant.new
  participant5.user = user
  participant5.activity = activity5
  participant5.save

  participant6 = Participant.new
  participant6.user = user
  participant6.activity = activity6
  participant6.save

  participant7 = Participant.new
  participant7.user = user
  participant7.activity = activity7
  participant7.save

  participant8 = Participant.new
  participant8.user = user
  participant8.activity = activity8
  participant8.save
end

puts "Finished creating participants!"

puts "Destroying friendships..."
Friendship.destroy_all

puts "Creating friendships..."

friendship1 = Friendship.new
friendship1.asker_id = 1
friendship1.receiver_id = 2
friendship1.save

friendship2 = Friendship.new
friendship2.asker_id = 1
friendship2.receiver_id = 3
friendship2.save

friendship3 = Friendship.new
friendship3.asker_id = 1
friendship3.receiver_id = 4
friendship3.save

friendship4 = Friendship.new
friendship4.asker_id = 2
friendship4.receiver_id = 3
friendship4.save

friendship5 = Friendship.new
friendship5.asker_id = 2
friendship5.receiver_id = 4
friendship5.save

friendship6 = Friendship.new
friendship6.asker_id = 3
friendship6.receiver_id = 4
friendship6.save

puts "Finished creating friendships!"
