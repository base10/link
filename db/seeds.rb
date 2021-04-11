# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def find_or_create_user(attributes)
  user = User.find_by(email: attributes.fetch(:email))

  return user if user.present?

  User.create(attributes)
end

def create_entry(iterator:, user:)
  user_dir = "user#{user.id}"

  {
    title: "Title #{iterator} - #{user.email}",
    url: "http://www.example.com/#{user_dir}/link#{iterator}/",
    notes: "These are notes for link entry No. #{iterator} for #{user.email}",
    private: (user.id + iterator).even?,
    user: user
  }
end

user_attributes = [
  { email: "user_1@example.com", name: "User 1", password: "S1mplePassword" },
  { email: "user_2@example.com", name: "User 2", password: "S2mplePassword" },
  { email: "user_3@example.com", name: "User 3", password: "S3mplePassword" },
  { email: "user_4@example.com", name: "User 4", password: "S4mplePassword" },
  { email: "user_5@example.com", name: "User 5", password: "S5mplePassword" },
]

user_attributes.each do |user_attr|
  user = find_or_create_user(user_attr)

  entry_attributes = []

  (1..9).each { |i| entry_attributes << create_entry(iterator: i, user: user) }

  Entry.create(entry_attributes)
end
