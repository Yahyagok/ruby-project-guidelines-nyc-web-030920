User.destroy_all
Company.destroy_all
Meetup.destroy_all




c1 = Company.create(name: "Bully Restourant", location: "New York City", category: "Restaurant",capacity: 50  )
c2 = Company.create(name: "A and Z", location: "Brooklyn", category: "Book store",capacity: 30  )
c3 = Company.create(name: "32nd Bar", location: "Queens", category: "Bar",capacity: 15  )
c4 = Company.create(name: "Kaplan English School", location: "Staten Island", category: "Learning",capacity: 52  )
c5 = Company.create(name: "improve you", location: "New York City", category: "Business",capacity: 20  )
c6 = Company.create(name: "Alicia Art Museum", location: "New York City", category: "Art",capacity: 25 )
c7 = Company.create(name: "New York Film Endustry", location: "New York City", category: "Business",capacity: 35  )
c8 = Company.create(name: "come along", location: "New York", category: "Tech",capacity: 20  )

m1 = Meetup.create(capacity: 1, discount_percent:20, this_weeks_event:" film", book:"nil", film: "three mokey ", business: "nil", tech:"nil", art:"nil", photograpy:"nil", learning: "nil")
m2 = Meetup.create(capacity: 2, discount_percent:20, this_weeks_event:"art", book:"nil" , film: "nil", business: "nil", tech:"nil", art:"going to withney musium", photograpy:"withney museum", learning: "nil")
m3 = Meetup.create(capacity: 3, discount_percent:20, this_weeks_event:"tech", book:"learn ruby" , film: "solving problem videos", business: "nil", tech:"ruby", art:"nil", photograpy:"nil", learning: "nil")
m4 = Meetup.create(capacity: 4, discount_percent:20, this_weeks_event:" phtography", book:"nil" , film: "three Monkey", business: "nil", tech:"nil", art:"nil", photograpy:"nil", learning: "nil")
m5 = Meetup.create(capacity: 2, discount_percent:20, this_weeks_event:" learning", book:"nil" , film: "three Monkey", business: "nil", tech:"nil", art:"nil", photograpy:"nil", learning: "nil")
m6 = Meetup.create(capacity: 3, discount_percent:20, this_weeks_event:" tech", book:"nil" , film: "three Monkey", business: "nil", tech:"nil", art:"nil", photograpy:"nil", learning: "nil")
m7 = Meetup.create(capacity: 4, discount_percent:20, this_weeks_event:" learning", book:"nil" , film: "three Monkey", business: "nil", tech:"nil", art:"nil", photograpy:"nil", learning: "nil")
m8 = Meetup.create(capacity: 5, discount_percent:20, this_weeks_event:" Watch Football", book:"nil" , film: "three Monkey", business: "nil", tech:"nil", art:"nil", photograpy:"nil", learning: "nil")  

u1 = User.create( name:"Ureil",interest:"book",age: 25 )
u2 = User.create( name:"Yahya",interest:"film",age: 15 )
u3 = User.create( name:"Mert",interest:"art",age: 23 )
u4 = User.create( name:"Marquez",interest:"learning",age: 16)
u5 = User.create( name:"Daniel",interest:"photography",age: 21 )
