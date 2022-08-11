puts "🌱 Seeding tasks..."

# Seed your database here

user_tasks = ["Clean room", "Take out trash", "Pay bills", "Exercise", "Meditate"]
random_boolean = [true, false, true, false].sample

User.create(name: "Tom")
User.create(name: "Jocelyn")
User.create(name: "Wesley")
User.create(name: "Serg")
User.create(name: "Thuy")
User.create(name: "Isaiah")


User.all.each do |user|
    6.times do
        ToDo.create(task: user_tasks.sample, completed: random_boolean, user_id: user.id)
    end
end

puts "✅ Done seeding!"
