# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


for
  i in 0..50 do
  Customer.create(name: "Customer"+i.to_s(),gender:"0",telephone:"18721272538",
                  zip:"456789",birthday:"1984/6/25",
                  age:"28",email:"sunjianghong@gmail.com",
                  province:"",city:"",country:"", source:"1",
                  level:"1" ,is_recommend:"0" ,recommend_customer_name:"andy",category:"1" ,
                  sn:"7ffsfsdgs123uui",model:"test7890")
end
User.create(name:"admin",hash_password:"d033e22ae348aeb5660fc2140aec35850c4da997")