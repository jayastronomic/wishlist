
User.destroy_all
Item.destroy_all

cf= User.create(username: "CoffeDad94", first_name: "Coffe", last_name: "Dad", email: "coffeedad@gmail.com", password_digest: "password")
bm = User.create(username: "BigMan27", first_name: "Big", last_name: "Man", email: "bigman@gmail.com", password_digest: "password")
bl = User.create(username: "BLM94", first_name: "Joe", last_name: "Budden", email: "blm@gmail.com", password_digest: "password")
pz = User.create(username: "IluvPizza94", first_name: "Pizza", last_name: "Girl", email: "pizza@gmail.com", password_digest: "password")

sm = User.create(username: "Imfatandpretty94", first_name: "Sally", last_name: "Mae", email: "sally@gmail.com", password_digest: "password")

Item.create(name: "Samsung TV", description: "I want a nice tv for the living room of my house", price: 1000, user_id: cf.id, img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRLL-5XHwLGwfU8_GAT3EDk1KiEC24bcrMYvFk_gxKLXIkal3ks5HJrCM40XOs&usqp=CAc")

Item.create(name: "A big ass House", description: "I want a big ass house.", price: 1000000, user_id: bm.id, img_url: "https://qph.fs.quoracdn.net/main-qimg-142c35a05b7471af3e30771453ef0948")

Item.create(name: "Macbook", description: "I'm am about to start coding school and I need a nice laptop", price: 1200, user_id: bl.id, img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQPCAMZYYdS47xmjqtrFP265j1lkZPLRzLFw1zxGexqFGBK0We0XnFkueXBXHs&usqp=CAc")

Item.create(name: "Idris Elba", description: "I want a new husband. My husband is starting to seem useless. He bores me. YAWWWWN", price: 200000000, user_id: pz.id, img_url: "https://m.media-amazon.com/images/M/MV5BNzEzMTI2NjEyNF5BMl5BanBnXkFtZTcwNTA0OTE4OA@@._V1_.jpg")

Item.create(name: "The Planet Mars", description: "I need a new planet. I hate here on Earth. Everyone is annoying lol.", price: 20, user_id: pz.id, img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTQgqFgxYiJ0Y1hEdIXX9KI25-L0lO4vhx7hUbPZUyl-fe_gsL4&usqp=CAU")













 
#20.times do
# User.create(
#         username: Faker::Internet.username, 
#         first_name: Faker::Name.first_name, 
#         last_name: Faker::Name.last_name  ,
#         email: Faker::Internet.email,
#         password_digest: Faker::Internet.password)
#         end

# 50.times do
#         Item.create(
#                 name: Faker::App.name, 
#                 description: Faker::Lorem.paragraph , 
#                 price: Faker::Number.number, 
#                 user_id: User.all.sample.id,
#                 img_url: Faker::LoremFlickr.image
#                 )
#         end