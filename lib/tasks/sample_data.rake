namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.jp",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.jp"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    4.times do |g|
      12.times do |n|
        Card.create!(name: "ハート"+"#{n+1}") if g==0
        Card.create!(name: "ダイヤ"+"#{n+1}")  if g==1
        Card.create!(name: "スペード"+"#{n+1}")  if g==2
        Card.create!(name: "クローバー"+"#{n+1}")  if g==3
      end
    end
  end
end