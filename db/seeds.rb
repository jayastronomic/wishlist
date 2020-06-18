


20.times do
User.create(username: Faker::Internet.username , first_name: Faker::Name.first_name  , last_name: Faker::Name.last_name  , email: Faker::Internet.email)
        end

50.times do
Item.create(name: Faker::App.name, description: Faker::Lorem.paragraph , price: Faker::Number.number ,
             user_id: User.all.sample )
        end


