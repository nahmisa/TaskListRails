def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  {
  title: "The First Task",
  description: "",
  completed_at: random_time, due_date: random_time
  },
  {
  title: "Go to Brunch",
  description: "", due_date: random_time
  },
  {
  title: "Go to Lunch",
  description: "",
  completed_at: random_time, due_date: random_time
  },
  {
  title: "Go to Second Lunch",
  description: "", due_date: random_time
  },
  {
  title: "Play Video Games",
  description: "",
  completed_at: random_time, due_date: random_time
  },
  {
  title: "High Five Somebody You Don't Know",
  description: "",
  completed_at: random_time, due_date: random_time
  },
  {
  title: "Plant Flowers",
  description: "",
  completed_at: random_time, due_date: random_time
  },
  {
  title: "Call Mom",
  description: "", due_date: random_time
  },
  {
  title: "She worries, you know.",
  description: "", due_date: random_time
  },
  {
  title: "Nap.",
  description: "",
  completed_at: random_time
  }
]

people = [
  {
  name: "Sarah",
  email: "nahmisa@gmail.com",
  uid: 8165914,
  provider: "github"
  },
  {
  name: "Gil",
  email: "nahmisa@gmail.com",
  uid: 8165914,
  provider: "github"
  },
  {
  name: "Nemesh",
  email: "nahmisa@gmail.com",
  uid: 8165914,
  provider: "github"
  }
]

people.each do |person| # associate each person with their own tasks
                        # (happens to be all the tasks)
  new_person = User.find_or_create_by(person)

  tasks.each do |task|
    new_task = Task.create task
    new_person.tasks << new_task
  end
end

# def random_time
#   Time.at(rand * Time.now.to_i)
# end
#
# tasks_seed = [
#       {
#         title: "Take out trash",
#
#   description: "Trash outside",
#         due_date: random_time,
#
#     completed_at: random_time,
#       },
#       {
#         title: "Walk the dog",
#
#   description: "Dog outside",
#         due_date: random_time,
#
#     completed_at: nil,
#       },
#     ]
#
# tasks_seed.each do |task|
#   Task.create task
# end
