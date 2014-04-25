# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new(first_name: 'Justin', last_name: 'Kay', email: 'justinbkay@gmail.com', role: :superuser)
admin.password = 'secret'
admin.save!

staff = User.new(first_name: 'Meeka', last_name: 'Kay', email: 'mkay@kunaschools.org', role: :staff)
staff.password = 'secret'
staff.save!

staff = User.new(first_name: 'Karen', last_name: 'Brown', email: 'kbrown@kunaschools.org', role: :staff)
staff.password = 'secret'
staff.save!

admin2 = User.new(first_name: 'Deb', last_name: 'McGrath', email: 'dmcgrath@kunaschools.org', role: :administrator)
admin2.password = 'secret'
admin2.save!

Student.create(first_name: 'Chase', last_name: 'Johnson', student_number: 48739, grade: 8, year: 2013, active: 1)
Student.create(first_name: 'Chase', last_name: 'Burtenshaw', student_number: 48738, grade: 7, year: 2013, active: 1)
Student.create(first_name: 'Patrick', last_name: 'Hansen', student_number: 48737, grade: 8, year: 2012, active: 0)
Student.create(first_name: 'Jamon', last_name: 'Kay', student_number: 48736, grade: 8, year: 2013, active: 1)
Student.create(first_name: 'Alysa', last_name: 'Walker', student_number: 48499, grade: 7, year: 2013, active: 1)
Student.create(first_name: 'Kenya', last_name: 'Morales', student_number: 48489, grade: 8, year: 2013, active: 1)

Block.create(number: 1, active: true)
Block.create(number: 2, active: true)
Block.create(number: 3, active: true)
Block.create(number: 4, active: true)
Block.create(number: 5, active: true)

# set up the detention_dates for 20 years
today = Date.today
current = today
end_date = today + 20.years

while current < end_date
  # black out all weekends
  blackout = [6,7].include?(current.cwday)
  DetentionDate.create(date: current, blacked_out: blackout)
  current += 1.day
end
