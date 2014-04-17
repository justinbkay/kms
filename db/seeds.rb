# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new(first_name: 'Justin', last_name: 'Kay', email: 'justinbkay@gmail.com', role: :superuser)
admin.password = 'camdon'
admin.save!

Student.create(first_name: 'Chase', last_name: 'Johnson', student_number: 48739, grade: 8, year: 2013, active: 1)
Student.create(first_name: 'Chase', last_name: 'Burtenshaw', student_number: 48738, grade: 7, year: 2013, active: 1)
Student.create(first_name: 'Patrick', last_name: 'Hansen', student_number: 48737, grade: 8, year: 2012, active: 0)
Student.create(first_name: 'Jamon', last_name: 'Kay', student_number: 48736, grade: 8, year: 2013, active: 1)

Block.create(number: 1, active: true)
Block.create(number: 2, active: true)
Block.create(number: 3, active: true)
Block.create(number: 4, active: true)
Block.create(number: 5, active: true)
