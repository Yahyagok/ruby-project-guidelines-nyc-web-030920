User.destroy_all
Company.destroy_all
Meetup.destroy_all

u1 = User.create( name:"Ureil",interest:"book",age: 25 )
u2 = User.create( name:"Yahya",interest:"film",age: 15 )
u3 = User.create( name:"Mert",interest:"art",age: 23 )
u4 = User.create( name:"Marquez",interest:"learning",age: 16)
u5 = User.create( name:"Daniel",interest:"photography",age: 21 )


c1 = Company.create(name: "Bully Restourant", location: "New York City", category: "Restaurant",capacity: 50  )
c2 = Company.create(name: "A and Z", location: "Brooklyn", category: "Book store",capacity: 30  )
c3 = Company.create(name: "32nd Bar", location: "Queens", category: "Bar",capacity: 15  )
c4 = Company.create(name: "Kaplan English School", location: "Staten Island", category: "Learning",capacity: 52  )
c5 = Company.create(name: "improve you", location: "New York City", category: "Business",capacity: 20  )
c6 = Company.create(name: "Alicia Art Museum", location: "New York City", category: "Art",capacity: 25 )
c7 = Company.create(name: "New York Film Endustry", location: "New York City", category: "Business",capacity: 35  )
c8 = Company.create(name: "come along", location: "New York", category: "Tech",capacity: 20  )

m1 = Meetup.create(user_id:u1.id,company_id:c1.id,capacity: 1, discount_percent:15, this_weeks_event:"star_wars_movie", book:"king_arthur", film: "three_monkey", business: "nil", tech:"architecture_disayn", art:"nil", photography:"brooklyn_museum", learning: "nil")
m9 = Meetup.create(user_id:u2.id,company_id:c2.id, capacity: 1, discount_percent:10, this_weeks_event:"toy_story_movie", book:"lost_island", film: "gora", business: "nil", tech:"auto_cad", art:"nil", photography:"digital_photography", learning: "nil")
m10 = Meetup.create(user_id:u3.id,company_id:c5.id,capacity: 1, discount_percent:45, this_weeks_event:"invisible_man_movie", book:"pure_love", film: "god_father", business: "nil", tech:"mat_lab", art:"nil", photography:"fashion_photography", learning: "nil")
m11 = Meetup.create(user_id:u4.id,company_id:c7.id,capacity: 1, discount_percent:15, this_weeks_event:"forrest_gump_movie", book:"imposible_love", film: "flight", business: "nil", tech:"html", art:"nil", photography:"jersey_city_photography", learning: "nil")
m12 = Meetup.create(user_id:u3.id,company_id:c6.id,capacity: 1, discount_percent:30, this_weeks_event:"a_beautiful_mind", book:"innocent_guy", film: "sully", business: "nil", tech:"nil", art:"nil", photography:"hiking_photography", learning: "nil")
m13 = Meetup.create(user_id:u2.id,company_id:c4.id,capacity: 1, discount_percent:20, this_weeks_event:" film", book:"nil", film: "unbreakable", business: "nil", tech:"nil", art:"nil", photography:"travel_photography", learning: "nil")
m2 = Meetup.create(user_id:u2.id,company_id:c6.id,capacity: 2, discount_percent:20, this_weeks_event:"art", book:"nil" , film: "jumanji", business: "nil", tech:"go", art:"going to withney musium", photography:"street_photography", learning: "nil")
m3 = Meetup.create(user_id:u4.id,company_id:c6.id,capacity: 3, discount_percent:20, this_weeks_event:"tech", book:"learn_ruby" , film: "toy_story", business: "nil", tech:"ruby", art:"nil", photography:"landscape_photography", learning: "nil")
m4 = Meetup.create(user_id:u2.id,company_id:c8.id,capacity: 4, discount_percent:20, this_weeks_event:"phtography", book:"nil" , film: "1917", business: "nil", tech:"css", art:"nil", photography:"nil", learning: "nil")
m5 = Meetup.create(user_id:u4.id,company_id:c7.id,capacity: 2, discount_percent:20, this_weeks_event:"learning", book:"nil" , film: "invisible_man", business: "nil", tech:"java", art:"nil", photography:"nil", learning: "nil")
m6 = Meetup.create(user_id:u1.id,company_id:c6.id,capacity: 3, discount_percent:20, this_weeks_event:" tech guys ", book:"nil" , film: "star_wars", business: "nil", tech:"java_script", art:"nil", photography:"nil", learning: "nil")
m7 = Meetup.create(user_id:u3.id,company_id:c2.id,capacity: 4, discount_percent:20, this_weeks_event:"learning how to cook", book:"nil" , film: "forrest_gump", business: "nil", tech:"ruby", art:"nil", photography:"nil", learning: "nil")
m8 = Meetup.create(user_id:u1.id,company_id:c1.id,capacity: 5, discount_percent:20, this_weeks_event:"Watching Football", book:"nil" , film: "a_beautiful_mind", business: "nil", tech:"python", art:"nil", photography:"nil", learning: "nil")  




