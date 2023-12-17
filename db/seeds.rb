# db/seeds.rb

# Clear existing records
Message.destroy_all

# Seed data
greetings = [
  "Hello, world!",
  "Welcome to our website!",
  "Greetings from Rails!",
  "Have a great day!",
  "Coding is fun!"
]

greetings.each do |greeting|
  Message.create(content: greeting)
end

puts "Seed data has been added."
