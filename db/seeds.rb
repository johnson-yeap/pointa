# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "johnson_yeap", email: "johnson.yeap91@gmail.com", password: "um9241991", password_confirmation: "um9241991", student_id: 1, confirmed_at: "2015-03-28 11:23:05")
User.create(username: "admin123", email: "johnson_yeap@hotmail.com", password: "admin123", password_confirmation: "admin123", student_id: 2, confirmed_at: "2015-03-28 11:23:05")
User.create(username: "eeling_saw", email: "eeling_saw@siswa.um.edu.my", password: "pointa123", password_confirmation: "pointa123", student_id: 3, confirmed_at: "2015-03-28 11:23:05")

Student.create(name: "Johnson Yeap", matric_no: "WEK110064", department_id: 1)
Student.create(name: "Admin", matric_no: "Admin", department_id: 1)
Student.create(name: "Saw Ee Ling", matric_no: "WEK110054", department_id: 1)


# AcademicYears
AcademicYear.create(name: "2011/2012")
AcademicYear.create(name: "2012/2013")
AcademicYear.create(name: "2013/2014")
AcademicYear.create(name: "2014/2015")

# Semesters
Semester.create(name: "Semester 1")
Semester.create(name: "Semester 2")

# AcademicYearSemester
# Binding Semesters to AcademicYear
AcademicYearSemester.create(academic_year_id: 1, semester_id: 1)	
AcademicYearSemester.create(academic_year_id: 1, semester_id: 2)
AcademicYearSemester.create(academic_year_id: 2, semester_id: 1)	
AcademicYearSemester.create(academic_year_id: 2, semester_id: 2)
AcademicYearSemester.create(academic_year_id: 3, semester_id: 1)	
AcademicYearSemester.create(academic_year_id: 3, semester_id: 2)
AcademicYearSemester.create(academic_year_id: 4, semester_id: 1)	
AcademicYearSemester.create(academic_year_id: 4, semester_id: 2)


# Grades
Grade.create(name: "A", points: 4.00)
Grade.create(name: "A-", points: 3.70)
Grade.create(name: "B+", points: 3.30)
Grade.create(name: "B", points: 3.00)
Grade.create(name: "B-", points: 2.70)
Grade.create(name: "C+", points: 2.30)
Grade.create(name: "C", points: 2.00)
Grade.create(name: "S", points: nil)

# Bachelors
Bachelor.create(name: "Bachelor of Computer Science")

# Departments
Department.create(name: "Software Engineering", min_ch: 126, bachelor_id: 1)
Department.create(name: "Computer System and Networking", min_ch: 125, bachelor_id: 1)
Department.create(name: "Artificial Intelligence", min_ch: 125, bachelor_id: 1)
Department.create(name: "Management Information System", min_ch: 125, bachelor_id: 1)

# Course Components
CourseComponent.create(code: "KUM", name: "Information Skills")
CourseComponent.create(code: "EJ", name: "Departmental Electives")
CourseComponent.create(code: "APK", name: "Basics of Entrepreneurship Culture")
CourseComponent.create(code: "KUK", name: "Co-curriculum")
CourseComponent.create(code: "TJ", name: "Departmental Core")
CourseComponent.create(code: "KBK", name: "Critical Thinking & Communication Skill")
CourseComponent.create(code: "KUW", name: "Islamic Civilization & Asian Civilization")
CourseComponent.create(code: "KUB", name: "University")
CourseComponent.create(code: "TF", name: "Faculty Core")

# Spis
Spi.create(course_component_id: 1, required_ch: 1, department_id: 1)
Spi.create(course_component_id: 2, required_ch: 12, department_id: 1)
Spi.create(course_component_id: 3, required_ch: 2, department_id: 1)
Spi.create(course_component_id: 4, required_ch: 2, department_id: 1)
Spi.create(course_component_id: 5, required_ch: 26, department_id: 1)
Spi.create(course_component_id: 6, required_ch: 3, department_id: 1)
Spi.create(course_component_id: 7, required_ch: 4, department_id: 1)
Spi.create(course_component_id: 8, required_ch: 6, department_id: 1)
Spi.create(course_component_id: 9, required_ch: 70, department_id: 1)

# Courses
Course.create(name: "Ethnic Relations", course_code: "GXEX1411", ch: 2, department_id: 1, course_component_id: 7)
Course.create(name: "Computing Mathematics I", course_code: "WXES1112", ch: 3, department_id: 1, course_component_id: 9)
Course.create(name: "Principles of Information Systems", course_code: "WMES1105", ch: 3, department_id: 1, course_component_id: 9)
Course.create(name: "Computer Systems & Organization", course_code: "WXES1109", ch: 3, department_id: 1, course_component_id: 9)
Course.create(name: "Programming I", course_code: "WXES1116", ch: 5, department_id: 1, course_component_id: 9)
Course.create(name: "Islamic And Asian Civilization", course_code: "GXEX1414", ch: 2, department_id: 1, course_component_id: 7)
Course.create(name: "Introduction To Malaysia", course_code: "GXEX1413", ch: 2, department_id: 1, course_component_id: 7)
Course.create(name: "Information Skills", course_code: "GXEX1401", ch: 1, department_id: 1, course_component_id: 1)
Course.create(name: "Data Structure", course_code: "WXES1117", ch: 5, department_id: 1, course_component_id: 9)
Course.create(name: "Principles of Artificial Intelligence", course_code: "WAES1102", ch: 3, department_id: 1, course_component_id: 9)
Course.create(name: "Software Engineering I", course_code: "WKES1104", ch: 3, department_id: 1, course_component_id: 9)
Course.create(name: "Computer System Architecture", course_code: "WRES1201", ch: 3, department_id: 1, course_component_id: 9)
Course.create(name: "Thinking and Communication Skills", course_code: "WXES2112", ch: 3, department_id: 1, course_component_id: 6)
Course.create(name: "Operating System", course_code: "WXES2113", ch: 4, department_id: 1, course_component_id: 9)
Course.create(name: "Database", course_code: "WXES2114", ch: 5, department_id: 1, course_component_id: 9)
Course.create(name: "Fundamentals of Network Technology", course_code: "WRES2111", ch: 5, department_id: 1, course_component_id: 9)
Course.create(name: "Human Computer Interaction", course_code: "WKES2107", ch: 4, department_id: 1, course_component_id: 5)
Course.create(name: "Software Project Management", course_code: "WKES2108", ch: 4, department_id: 1, course_component_id: 5)
Course.create(name: "Programming for Web Engineering", course_code: "WKES2109", ch: 4, department_id: 1, course_component_id: 5)
Course.create(name: "Object-Oriented Modeling", course_code: "WKES2110", ch: 4, department_id: 1, course_component_id: 9)
Course.create(name: "Software Requirements Engineering", course_code: "WKES3202", ch: 3, department_id: 1, course_component_id: 5)
Course.create(name: "Industrial Training", course_code: "WXES2193", ch: 12, department_id: 1, course_component_id: 9)
Course.create(name: "Fundamental of Entrepreneurship Culture", course_code: "GXEX1412", ch: 2, department_id: 1, course_component_id: 3)
Course.create(name: "Fundamental Research in Academic Project", course_code: "WXES3183", ch: 3, department_id: 1, course_component_id: 9)
Course.create(name: "Software Quality", course_code: "WKES3106", ch: 3, department_id: 1, course_component_id: 5)
Course.create(name: "Software Architecture and Design Paradigms", course_code: "WKES3109", ch: 4, department_id: 1, course_component_id: 9)
Course.create(name: "Software Engineering II", course_code: "WKES3206", ch: 4, department_id: 1, course_component_id: 5)
Course.create(name: "Academic Project for Software Engineering II", course_code: "WKES3182", ch: 5, department_id: 1, course_component_id: 9)
Course.create(name: "Software Verification and Validation", course_code: "WKES3110", ch: 4, department_id: 1, course_component_id: 5)
Course.create(name: "Software Evolution and Validation", course_code: "WKES3108", ch: 3, department_id: 1, course_component_id: 2)
Course.create(name: "Software Process And Metrics", course_code: "WKES3204", ch: 3, department_id: 1, course_component_id: 2)
Course.create(name: "Programming Language Concepts", course_code: "WKES2401", ch: 3, department_id: 1, course_component_id: 2)
Course.create(name: "Advance Programming", course_code: "WKES3203", ch: 3, department_id: 1, course_component_id: 2)
Course.create(name: "Analysis Algorithm", course_code: "WKES3311", ch: 3, department_id: 1, course_component_id: 2)
Course.create(name: "Automated Theory", course_code: "WKES3403", ch: 3, department_id: 1, course_component_id: 2)
Course.create(name: "Fundamentals of Cognitive Science", course_code: "WAES2107", ch: 3, department_id: 1, course_component_id: 2)
Course.create(name: "Database Administration", course_code: "WMES2271", ch: 5, department_id: 1, course_component_id: 2)
Course.create(name: "Advanced Network Technology", course_code: "WRES2203", ch: 4, department_id: 1, course_component_id: 2)
Course.create(name: "Speaking Skills in English", course_code: "GTEE1109", ch: 3, course_component_id: 8)
Course.create(name: "Writing Skills in English", course_code: "GTEE1109", ch: 3, course_component_id: 8)
Course.create(name: "Introduction to Photography", course_code: "GNEK1037", ch: 2, course_component_id: 4)

# WEK110064
Enrollment.create(student_id: 1, course_id: 1, grade_id: 1, academic_year_semester_id: 1, completed: true)
Enrollment.create(student_id: 1, course_id: 3, grade_id: 4, academic_year_semester_id: 1, completed: true)
Enrollment.create(student_id: 1, course_id: 4, grade_id: 7, academic_year_semester_id: 1, completed: true)
Enrollment.create(student_id: 1, course_id: 2, grade_id: 1, academic_year_semester_id: 1, completed: true)
Enrollment.create(student_id: 1, course_id: 5, grade_id: 7, academic_year_semester_id: 1, completed: true)

Enrollment.create(student_id: 1, course_id: 39, grade_id: 2, academic_year_semester_id: 2, completed: true)
Enrollment.create(student_id: 1, course_id: 10, grade_id: 2, academic_year_semester_id: 2, completed: true)
Enrollment.create(student_id: 1, course_id: 11, grade_id: 2, academic_year_semester_id: 2, completed: true)
Enrollment.create(student_id: 1, course_id: 12, grade_id: 4, academic_year_semester_id: 2, completed: true)
Enrollment.create(student_id: 1, course_id: 9, grade_id: 2, academic_year_semester_id: 2, completed: true)
Enrollment.create(student_id: 1, course_id: 6, grade_id: 1, academic_year_semester_id: 2, completed: true)
Enrollment.create(student_id: 1, course_id: 8, grade_id: 8, academic_year_semester_id: 2, completed: true)

Enrollment.create(student_id: 1, course_id: 40, grade_id: 3, academic_year_semester_id: 3, completed: true)
Enrollment.create(student_id: 1, course_id: 23, grade_id: 1, academic_year_semester_id: 3, completed: true)
Enrollment.create(student_id: 1, course_id: 16, grade_id: 2, academic_year_semester_id: 3, completed: true)
Enrollment.create(student_id: 1, course_id: 14, grade_id: 1, academic_year_semester_id: 3, completed: true)
Enrollment.create(student_id: 1, course_id: 13, grade_id: 1, academic_year_semester_id: 3, completed: true)
Enrollment.create(student_id: 1, course_id: 15, grade_id: 3, academic_year_semester_id: 3, completed: true)

# exclude GNEK1037
Enrollment.create(student_id: 1, course_id: 17, grade_id: 3, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 18, grade_id: 4, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 19, grade_id: 1, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 20, grade_id: 2, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 21, grade_id: 3, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 41, grade_id: 8, academic_year_semester_id: 4, completed: true)


Enrollment.create(student_id: 1, course_id: 22, grade_id: 1, academic_year_semester_id: 5, completed: true)

# A+ is treated as A for the time being
Enrollment.create(student_id: 1, course_id: 32, grade_id: 2, academic_year_semester_id: 7, completed: true)
Enrollment.create(student_id: 1, course_id: 29, grade_id: 1, academic_year_semester_id: 7, completed: true)
Enrollment.create(student_id: 1, course_id: 33, grade_id: 3, academic_year_semester_id: 7, completed: true)
Enrollment.create(student_id: 1, course_id: 31, grade_id: 1, academic_year_semester_id: 7, completed: true)
Enrollment.create(student_id: 1, course_id: 34, grade_id: 5, academic_year_semester_id: 7, completed: true)
Enrollment.create(student_id: 1, course_id: 24, grade_id: 1, academic_year_semester_id: 7, completed: true)

# Admin
Enrollment.create(student_id: 2, course_id: 24, grade_id: 1, academic_year_semester_id: 7, completed: true)
Enrollment.create(student_id: 2, course_id: 1, grade_id: 1, academic_year_semester_id: 1, completed: true)
Enrollment.create(student_id: 2, course_id: 2, grade_id: 2, academic_year_semester_id: 1, completed: false)
Enrollment.create(student_id: 2, course_id: 3, grade_id: 2, academic_year_semester_id: 2, completed: true)
