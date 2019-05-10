# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meetup.create(name: 'Code reading', description: 'project 3 code')
Meetup.create(name: 'Dinner', description: 'Fu-men at Hong Leong Building')

Schedule.create(date: '2019/05/25' , meetup_id: 1)
Schedule.create(date: '2019/04/18' , meetup_id: 1)


Schedule.create(date: '2019/11/23', meetup_id: 2)
Schedule.create(date: '2019/07/25', meetup_id: 2)
Schedule.create(date: '2019/09/09', meetup_id: 2)


puts 'DATA SEEDEDDED'