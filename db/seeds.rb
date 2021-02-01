# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
        {
    name: "SeedTester1 ",
     email:"seedtester1@tester.com",
     password:"password" 
},
)
# Meeting.create([
#        {
#        name:"Meeting 1 ",
#        date:Date.parse('17/9/2021'),
#        time:Time.parse('01:30'),
#        detail:"Will be located in main room",
#        end_time:Time.parse('02:00'),
#        user_id: 1 ,
#        comment:" The meeting went well"
       
#        },
# ])
     

# MyMeeting.create(
#        { 
#         title:"Meeting 1 ",
#         date:Date.parse('17/9/2021'),
#         start_time:Time.parse('01:30'),
#         details:"Will be located in main room",
#         end_time:Time.parse('02:00'),
#         user_id: 1 
#         },
# )
