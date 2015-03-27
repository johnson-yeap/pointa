# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "johnson_yeap", email: "johnson.yeap91@gmail.com", password: "johnson9241991", password_confirmation: "johnson9241991", student_id: 1)
Student.create(name: "Johnson Yeap", matric_no: "WEK110064", department_id: 1)

Department.create(name: "Software Engineering", min_ch: 126, bachelor_id: 1)
Bachelor.create(name: "Bachelor of Computer Science")