# Create 11 users and for each user 3 pin
11.times do
    user = User.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name)
    i = rand(4) + 1
    i.times do
        Pin.create!(user_id: user.id, url: Faker::Internet.email)
    end
end
# Creat 20 comments
20.times do
    Comment.create!(user_id: Faker::Number.between(User.first.id, User.last.id), pin_id: Faker::Number.between(Pin.first.id, Pin.last.id), content: Faker::Community.quotes)
end
