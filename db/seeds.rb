# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "superadmin", password: "superhero", password_confirmation: "superhero", email: "johnson.yeap91@gmail.com")
Bachelor.create(name: "Bachelor of Computer Science")
Department.create(name: "Software Engineering", min_ch: 125, bachelor_id: 1)
Student.create(name: "Johnson Yeap", matric_no: "WEK110064", department_id: 1, user_id: 1)

User.create(username: "supertester", password: "superman", password_confirmation: "superman", email: "johnson_yeap@hotmail.com")
Student.create(name: "Serena", matric_no: "WEK110065", department_id: 1, user_id: 2)
