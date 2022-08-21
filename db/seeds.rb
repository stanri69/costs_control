require 'faker'

user = User.create!(
  email: "uesr@mail.com",
  password: 123123
)

10.times do
  item = Item.create!(
    category: :Food,
    price: 300,
    dob: Time.now,
    user_id: 1
  )
end

8.times do
  item = Item.create!(
    category: :Utilities,
    price: 200,
    dob: Time.now,
    user_id: 1
  )
end

6.times do
  item = Item.create!(
    category: :Technique,
    price: 100,
    dob: Time.now,
    user_id: 1
  )
end

4.times do
  item = Item.create!(
    category: :Miscellaneous,
    price: 360,
    dob: Time.now,
    user_id: 1
  )
end

10.times do |i|
  item = Item.create!(
    category: :Miscellaneous,
    price: 321,
    dob: Time.now - i.month,
    user_id: 1
  )
end