# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "johnson_yeap", email: "johnson.yeap91@gmail.com", password: "johnson9241991", password_confirmation: "johnson9241991", student_id: 1, confirmed_at: "2015-03-28 11:23:05")
User.create(username: "admin123", email: "johnson_yeap@hotmail.com", password: "admin123", password_confirmation: "admin123", student_id: 2, confirmed_at: "2015-03-28 11:23:05")

Student.create(name: "Johnson Yeap", matric_no: "WEK110064", department_id: 1)
Student.create(name: "Admin", matric_no: "Admin", department_id: 1)

# Enrollments
Enrollment.create(student_id: 1, course_id: 1)
Enrollment.create(student_id: 1, course_id: 2)

# Bachelors
Bachelor.create(name: "Bachelor of Computer Science")

# Departments
Department.create(name: "Software Engineering", min_ch: 126, bachelor_id: 1)
Department.create(name: "Computer System and Networking", min_ch: 125, bachelor_id: 1)
Department.create(name: "Artificial Intelligence", min_ch: 125, bachelor_id: 1)
Department.create(name: "Management Information System", min_ch: 125, bachelor_id: 1)
		
# Courses
Course.create(name: "Ethnic Relations", course_code: "GXEX1411", ch: 2, department_id: 1)
Course.create(name: "Computing Mathematics I", course_code: "WXES1112", ch: 3, department_id: 1)
Course.create(name: "Principles of Information Systems", course_code: "WMES1105", ch: 3, department_id: 1)
Course.create(name: "Computer Systems & Organization", course_code: "WXES1109", ch: 3, department_id: 1)
Course.create(name: "Programming I", course_code: "WXES1116", ch: 5, department_id: 1)
Course.create(name: "TITAS", course_code: "GXEX1410", ch: 2, department_id: 1)
Course.create(name: "Introduction To Malaysia", course_code: "GXEX1413", ch: 2, department_id: 1)
Course.create(name: "Information Skills", course_code: "GXEX1401", ch: 1, department_id: 1)
Course.create(name: "Data Structure", course_code: "WXES1117", ch: 5, department_id: 1)
Course.create(name: "Principles of Artificial Intelligence", course_code: "WAES1102", ch: 3, department_id: 1)
Course.create(name: "Software Engineering I", course_code: "WKES1104", ch: 3, department_id: 1)
Course.create(name: "Computer System Architecture", course_code: "WRES1201", ch: 3, department_id: 1)
Course.create(name: "Thinking and Communication Skills", course_code: "WXES2112", ch: 3, department_id: 1)
Course.create(name: "Operating System", course_code: "WXES2113", ch: 4, department_id: 1)
Course.create(name: "Database", course_code: "WXES2114", ch: 5, department_id: 1)
Course.create(name: "Fundamentals of Network Technology", course_code: "WRES2111", ch: 5, department_id: 1)
Course.create(name: "Human Computer Interaction", course_code: "WKES2107", ch: 4, department_id: 1)
Course.create(name: "Software Project Management", course_code: "WKES2108", ch: 4, department_id: 1)
Course.create(name: "Programming for Web Engineering", course_code: "WKES2109", ch: 4, department_id: 1)
Course.create(name: "Object-Oriented Modeling", course_code: "WKES2110", ch: 4, department_id: 1)
Course.create(name: "Software Requirements Engineering", course_code: "WKES3202", ch: 3, department_id: 1)
Course.create(name: "Industrial Training", course_code: "WXES2193", ch: 12, department_id: 1)
Course.create(name: "Fundamental of Entrepreneurship Culture", course_code: "GXEX1412", ch: 2, department_id: 1)
Course.create(name: "Fundamental Research in Academic Project", course_code: "WXES3183", ch: 3, department_id: 1)
Course.create(name: "Software Quality", course_code: "WKES3106", ch: 3, department_id: 1)
Course.create(name: "Software Architecture and Design Paradigms", course_code: "WKES3109", ch: 4, department_id: 1)
Course.create(name: "Software Engineering II", course_code: "WKES3206", ch: 4, department_id: 1)
Course.create(name: "Academic Project for Software Engineering II", course_code: "WKES3182", ch: 5, department_id: 1)
Course.create(name: "Software Verification and Validation", course_code: "WKES3110", ch: 4, department_id: 1)
Course.create(name: "Software Evolution and Validation", course_code: "WKES3108", ch: 3, department_id: 1)
Course.create(name: "Software Process And Metrics", course_code: "WKES3204", ch: 3, department_id: 1)
Course.create(name: "Programming Language Concepts", course_code: "WKES2401", ch: 3, department_id: 1)
Course.create(name: "Advance Programming", course_code: "WKES3203", ch: 3, department_id: 1)
Course.create(name: "Analysis Algorithm", course_code: "WKES3311", ch: 3, department_id: 1)
Course.create(name: "Automated Theory", course_code: "WKES3403", ch: 3, department_id: 1)
Course.create(name: "Fundamentals of Cognitive Science", course_code: "WAES2107", ch: 3, department_id: 1)
Course.create(name: "Database Administration", course_code: "WMES2271", ch: 5, department_id: 1)
Course.create(name: "Advanced Network Technology", course_code: "WRES2203", ch: 4, department_id: 1)
