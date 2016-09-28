# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def random_time
  Time.at(rand * Time.now.to_i)
end

tasks_seed = [
      {
        title: "Take out trash",
        description: "Trash outside",
        due_date: random_time,
        completed_at: random_time,
      },
      {
        title: "Walk the dog",
        description: "Dog outside",
        due_date: random_time,
        completed_at: nil,
      },
    ]

tasks_seed.each do |task|
  Task.create task
end
