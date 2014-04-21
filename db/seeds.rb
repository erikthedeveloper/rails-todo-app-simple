# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create(email: 'joe@jojo.com', username: 'bobbyjo', password: 'password')

project = user.projects.create(name: 'Joe\s Project', description: 'Not much of a description')

tasklist = project.tasklists.create(name: 'A List of Tasks...')

tasklist.tasks.create(title: 'The Task #1', complete: false)
tasklist.tasks.create(title: 'The Task #2', complete: false)
tasklist.tasks.create(title: 'The Task #3', complete: true)
tasklist.tasks.create(title: 'The Task #4', complete: false)
tasklist.tasks.create(title: 'The Task #5', complete: true)
