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

# Students
Student.create(name: "Johnson Yeap", matric_no: "WEK110064", department_id: 1, academic_year_id: 1)
Student.create(name: "Admin", matric_no: "Admin", department_id: 1, academic_year_id: 2)
Student.create(name: "Saw Ee Ling", matric_no: "WEK110054", department_id: 1, academic_year_id: 1)

# Lecturers
Lecturer.create(name: "Dr. Mumtaz Begum Peer Mustafa", position: "Senior Lecturer")
Lecturer.create(name: "Dr. Su Moon Ting", position: "Senior Lecturer")
Lecturer.create(name: "Dr. Busyairah Syd Ali", position: "Senior Lecturer")
Lecturer.create(name: "Assoc. Prof. Dr Teh Ying Wah", position: "Associate Professor")

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
Grade.create(name: "A/A+", points: 4.00)
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
Course.create(name: "Ethnic Relations", code: "GXEX1411", ch: 2, department_id: 1, course_component_id: 7, description: "")
Course.create(name: "Computing Mathematics I", code: "WXES1112", ch: 3, department_id: 1, course_component_id: 9, description: "This course covers discrete mathematics and its applications in computer science. Topics include number theory, sets, relations and functions, logic, graphs and trees, matrices, vector and combinatorics. It also covers mathematical applications in computer science (such as applications of sets and functions in program semantics, logic in program specification, equivalence and order relations in program complexity, graphs and trees in game theory, matrices in graphics, number theory in secure communication).")
Course.create(name: "Principles of Information Systems", code: "WMES1105", ch: 3, department_id: 1, course_component_id: 9, description: "This course covers the following topics: (a) Overview of Information System (IS) (Introduction to IS, IS in organisation); (b) Information Technology concepts in IS (Output/hardware: input devices, processing and output devices, software: system and application software, managing data and information, telecommunications and networks, internet, intranet, extranet; (c) IS for business (Electronic Commerce, Transaction Processing System and Enterprise Resource Planning, Decision Support System, Specialise Business IS: intelligent system, virtual reality and other specialised systems); (d) IS stakeholders; (e) IS in society, business and industry (security issue and privacy, ethics and IS); and (f) Case study on IS in organization.")
Course.create(name: "Computer Systems & Organization", code: "WXES1109", ch: 3, department_id: 1, course_component_id: 9, description: "This course covers the introduction to computer systems & organization which includes number system, boolean algebra, basic logic gates, function simplification, combinational circuit, latches and flipflop, sequential circuit and addressing mode. This course also gives introduction to Pentium Processor Architecture and Assembly language.")
Course.create(name: "Programming I", code: "WXES1116", ch: 5, department_id: 1, course_component_id: 9, description: "This course covers problem solving and the fundamental of programming. These include problem solving techniques, the basic structure of computer program, the fundamental concepts of object-oriented programming, data types and operations, selection control structures i.e. if and switch, repetition control structures i.e. for, while, dowhile, function, array, string, text file, and programming practice.")
Course.create(name: "Islamic And Asian Civilization", code: "GXEX1414", ch: 2, department_id: 1, course_component_id: 7, description: "")
Course.create(name: "Introduction To Malaysia", code: "GXEX1413", ch: 2, department_id: 1, course_component_id: 7, description: "")
Course.create(name: "Information Skills", code: "GXEX1401", ch: 1, department_id: 1, course_component_id: 1, description: "")
Course.create(name: "Data Structure", code: "WXES1117", ch: 5, department_id: 1, course_component_id: 9, description: "This course introduces data structures in the context of object orientation. Concepts of objectoriented programming covered include class, object, encapsulation, inheritance, and polymorphism. Java interface and generics are taught before different data structures like linked list, stack, queue, and binary tree are explained in details. Searching and sorting algorithms are also covered by this course.")
Course.create(name: "Principles of Artificial Intelligence", code: "WAES1102", ch: 3, department_id: 1, course_component_id: 9, description: "This is an introductory course to the Principle of Artificial Intelligence (AI). It covers the history, the basic concepts and techniques of AI such as knowledge representation, problem solving, searching, reasoning and machine learning. It also differentiates between conventional systems and intelligent systems and introduces the various applications of AI.")
Course.create(name: "Software Engineering I", code: "WKES1104", ch: 3, department_id: 1, course_component_id: 9, description: "This course covers software engineering principles, concepts and system types; software engineering development process, techniques, methodologies and tools; and software engineering best practices and experience.")
Course.create(name: "Computer System Architecture", code: "WRES1201", ch: 3, department_id: 1, course_component_id: 9, description: "This course covers the introduction to computer architecture which includes global system structure, instruction sets, addressing mod, fundamental processor execution technique, pipelining, RISC and CISC Design, memory hierarchy, cache, bus Interconnection, system I/O, multiprocessing system and advanced topic in computer architecture.")
Course.create(name: "Thinking and Communication Skills", code: "WXES2112", ch: 3, department_id: 1, course_component_id: 6, description: "This course is based on the conviction that thinking is an ability that can be developed and improved through guidance and practice. It is designed to help develop fundamental thinking abilities such as clarifying, analyzing and evaluating arguments; and developing attitudes of open-mindedness and curiosity. These are needed for success in academic courses, in solving problems and making informed decisions in life. The course integrates the development of both critical (evaluation) and creative (synthesis) thinking abilities within communication situations such as emphasizing empathy speaker and the audience, interpersonal communication, the use of language and nonverbal messages. This learning environment will develop leadership skills, group skills and other necessary skills due to its dynamic nature.")
Course.create(name: "Operating System", code: "WXES2113", ch: 4, department_id: 1, course_component_id: 9, description: "This course covers basic concept of operating systems which includes memory management in early and recent systems, processor and process managements, concurrent process, deadlock and starvation. This course also provides insights to device, file and system management, as well as example of operating systems.")
Course.create(name: "Database", code: "WXES2114", ch: 5, department_id: 1, course_component_id: 9, description: "This course contains the following subjects: (a) Filebased System. Limitation of the File-Based Approach. The Database and Database Management System. Components of the DBMS Environment. Role if the Database EnvironmentData and Database Administrators, Database Designers, Application Developers and End-Users; (b) Three Level ANSI-SPARC Architecture. Database Languages- DDL, DML and FourthGeneration Languages(4GLs). Data Models and Conceptual Modelling - Object Based Data Models, Record-Based Data Models, Physical Data Models and Conceptual Modelling. Functions of a DBMS. Data Dictionary; (c)The relational model. Relational data structure, mathematical relations, database relations, properties of relations, relational keys, representing relational database schemas. Integrity constraints, relational algebra, relational calculus; (d) Entity relationship modeling - entity types, attributes, relationship types, attributes on relationship. Structural constraints, problems with ER model. EER model - specialization or generalization, aggregation and composition; (e) Normalization - update anomalies: insertion anomalies, deletion anomalies and modification anomalies. First normal form, second normal form, third normal form, Boyce-Codd normal form(BCNF), MVD and fourth normal form, JD and fifth normal form; (f) Methodology (Conceptual; Logical and Physical; (g) Data Manipulation: SQL(Structured Query Language). And (h) Transaction management, issues in database management system.")
Course.create(name: "Fundamentals of Network Technology", code: "WRES2111", ch: 5, department_id: 1, course_component_id: 9, description: "This course covers the basic of computer and networking which includes transmission medium, OSI layers, LAN and WAN, IP addressing and VLSM, TCP/IP, Router setup and configurations.")
Course.create(name: "Human Computer Interaction", code: "WKES2107", ch: 4, department_id: 1, course_component_id: 5, description: "This course covers HCI fundamentals and usercentered approach of interaction design. HCI fundamentals include topics on human, computer and interactions; interaction styles, paradigms and devices; capabilities of human beings; usability; guidelines, principles, heuristics and patterns; visual design and interface metaphors. User-centered approach includes topics on design process, low and high fidelity, design tools and evaluations. The course also covers topic on designing for the web.")
Course.create(name: "Software Project Management", code: "WKES2108", ch: 4, department_id: 1, course_component_id: 5, description: "This course introduces the fundamental of management concepts, explains topics on project planning, the various issues involved in the management of project personnel, organisational structures, and project control. This course also covers the procedures to conduct project audit and closure.")
Course.create(name: "Programming for Web Engineering", code: "WKES2109", ch: 4, department_id: 1, course_component_id: 5, description: "This course covers theoretical and technical issues of web development. Theoretical issues include topics on the systematic development of web based systems under the concept of web engineering process. Technical issues include topics on interoperability of java application and java applets, graphical user interface components, exception handling, multithreading, Java Database connectivity, servelets, network programming, HTML and javadoc.")
Course.create(name: "Object-Oriented Modeling", code: "WKES2110", ch: 4, department_id: 1, course_component_id: 9, description: "This course covers object-oriented modelling concepts and processes using Unified Modelling Language (UML). Topics include modelling software system through structural (use case, class, component, package and deployment diagram) and interaction (sequence, activity and statechart diagram) diagrams.")
Course.create(name: "Software Requirements Engineering", code: "WKES3202", ch: 3, department_id: 1, course_component_id: 5, description: "This course covers software requirements fundamentals; system and software systems engineering; requirements engineering phases including requirements elicitation, analysis, specification, validation and management; methodologies and software requirements tools; and software systems engineering modeling.")
Course.create(name: "Industrial Training", code: "WXES2193", ch: 12, department_id: 1, course_component_id: 9, description: "")
Course.create(name: "Fundamental of Entrepreneurship Culture", code: "GXEX1412", ch: 2, department_id: 1, course_component_id: 3, description: "")
Course.create(name: "Fundamental Research in Academic Project", code: "WXES3183", ch: 3, department_id: 1, course_component_id: 9, description: "This course covers the following research activities: problem identification; literature review; evaluation of the research proposal; viva on the research proposal and mastering of tools; and evaluation of the academic report.")
Course.create(name: "Software Quality", code: "WKES3106", ch: 3, department_id: 1, course_component_id: 5, description: "This course covers software quality and software quality assurance. It introduces the software quality assurance architecture and framework. These include the components, planning programme, techniques and CASE tools in software quality assurance activities, software inspection, software testing strategy, verification and validation, corrective and preventive action, procedures and work instructions. Software quality measurement, metrics and its implementation are also covered in this course. The later part of this course covers the Software Quality Management Standards and SQA Project Process Standards which includes ISO 9001 and ISO 9000-3, CMM and CMM-I assessment methodology, Bootstrap methodology, SPICE project and ISO/IEC 15504 software process assessment standard, IEEE software engineering standards, IEEE/EIA Std 12207-software lifecycle processes, IEEE/EIA Std 1012-verification and validation and IEEE/EIA Std 1028-reviews.")
Course.create(name: "Software Architecture and Design Paradigms", code: "WKES3109", ch: 4, department_id: 1, course_component_id: 9, description: "This course covers detailed design and architecture design in software development. These include the issues and principles of design; the different types of design methods such as function-oriented design, object-oriented design, data-structure centered design and component design; design patterns; design support tools; architecture design and reuse; architectural styles; architectural notations; quality attributes and product lines.")
Course.create(name: "Software Engineering II", code: "WKES3206", ch: 4, department_id: 1, course_component_id: 5, description: "This course covers the fundamental concepts and principles of software reuse, component-level development, development/design for reuse, development/design by reuse, and design patterns. It includes the definition and explanation of the nature of components, components interfaces, Interfaces as contracts, benefits of components, component design and assembly. It introduces the architecture of component-based systems, middleware, object-oriented paradigm within middleware, component-based software engineering models such as CORBA, COM+, EJB, .NET, Web Services, and also covers componentbased computing, API programming, class browsers and related tools, as well as debugging in the API environment.")
Course.create(name: "Academic Project for Software Engineering II", code: "WKES3182", ch: 5, department_id: 1, course_component_id: 9, description: "This course covers system analysis and design, system development and testing, system evaluation, system presentation and demonstration, and report writing.")
Course.create(name: "Software Verification and Validation", code: "WKES3110", ch: 4, department_id: 1, course_component_id: 5, description: "This course provides an overview of software verification and validation terminology and foundation. The course covers topics in reviews, testing, human computer interface testing and problem analysis and reporting. In particular, students will learn about desk checking, walkthroughs, inspections, unit testing, exception handling, coverage analysis, black box testing, integration testing, and regression testing, system and acceptance, developing test case, testing across quality attributes and testing tools. Problem analysis and reporting will include analyzing failure reports, debugging/fault isolation techniques, defect analysis and problem tracking.")
Course.create(name: "Software Evolution and Validation", code: "WKES3108", ch: 3, department_id: 1, course_component_id: 2, description: "This course covers software evolution and configuration in software maintenance activities. Topics include Basic Concepts (Definitions and terminology, Need for maintenance, A software maintenance framework, Categories for maintenance); Maintenance Processes (Corrective Maintenance, Perfective Maintenance, Adaptive Maintenance, Preventive Maintenance); Key issues in software maintenance (Technical, Management, Cost and estimation); Techniques for maintenance; Program Comprehension(Strategies, Software tools for program understanding); Evolution of Legacy Systems; Configuration Management (Configuration item, Processes and activities in configuration management, Patches); and CASE Tools for configuration management.")
Course.create(name: "Software Process And Metrics", code: "WKES3204", ch: 3, department_id: 1, course_component_id: 2, description: "This course provides an overview of software process definition and process infrastructure, software development lifecycle model and the importance of a defined process and process maturity. The course covers topics in measurement of product development, software measurement framework and methods, software metrics data collection and analysis, measuring process and product attributes. In addition, IEEE software engineering standards, organization level process improvement, team level software improvement, individual software level improvement and measurement of software improvement will also be studied.")
Course.create(name: "Programming Language Concepts", code: "WKES2401", ch: 3, department_id: 1, course_component_id: 2, description: "This course covers topics on programming languages concepts. It starts with the purpose for learning the concepts of programming languages, language analysis criteria and a brief introduction to the history of the programming languages. Then it covers compilation and interpretation processes, syntax and semantics which includes concept of grammar, BNF, EBNF, syntax graph and parse trees. Several models of programming languages discussed include the imperative model, objectoriented model, functional, logic and event-based models. Several languages will be introduced for each of the models. These languages include C, C++, Java, LISP, Scheme, Prolog and Visual Basics.")
Course.create(name: "Advance Programming", code: "WKES3203", ch: 3, department_id: 1, course_component_id: 2, description: "This course covers the advanced features of programming language. These include the background, history, platform, and the related tools; the fundamentals of the language; other constructs of the language for example object-oriented constructs; the advanced features of the language for example built-in and user-defined data structure/collection, Events, Exceptions, Input/Output, Library/package/assembly, Thread and other advanced features of the language. This course also covers window application, database connection and web application and/or services.")
Course.create(name: "Analysis Algorithm", code: "WKES3311", ch: 3, department_id: 1, course_component_id: 2, description: "This course introduces the analysis of algorithms that highlights on the growth rate (Big-O notation), average-case and worst-case analyses. This course also explains the basic algorithms on trees, sorting, and fundamental techniques which include recursive call, divide-and-conquer, and Greedy Method. Besides that, this course covers important topics comprising algorithms on text processing, pattern matching algorithms, graph algorithms, and mathematical algorithms.")
Course.create(name: "Automated Theory", code: "WKES3403", ch: 3, department_id: 1, course_component_id: 2, description: "This course covers Automata theory and its principles. Students will be introduced to the concept of automata. Other topics include finite automata, regular expressions and languages, properties of regular languages, context-free grammars and languages, properties of context-free languages and pushdown automata. Topics on introduction to Turing Machines will also be introduce is this course.")
Course.create(name: "Fundamentals of Cognitive Science", code: "WAES2107", ch: 3, department_id: 1, course_component_id: 2, description: "This course covers the fundamentals on cognitive science. It covers topics on mind and machine, perception (object recognition), observation and consciousness, memory (short term memory, working memory and long term memory), learning, forgetting phenomena and knowledge retrieval, mental representation and visual perception, category and schema, language perception (verbal and non verbal), emotion and expression, reasoning, problem solving and decision making, intelligence and creativity.")
Course.create(name: "Database Administration", code: "WMES2271", ch: 5, department_id: 1, course_component_id: 2, description: "This course contains the following topics: (a) Introduction to Database Products, Services and Architecture; (b) Role as a Database Administrator, and its tasks and tools; (c) Managing the Database Instances; (d) Managing Database Storage Structures; (e) Administering User Security; (f) Managing Schema Objects, (g) Managing Data and Concurrency; (h) Managing Undo Data; (i) Implementing Database Security; (j) Configuring Database Network Environment; (k) Proactive Database Maintenance; (l) Performance Management; (m) Database Backup and Recovery; (n) Flashback and Moving Data.")
Course.create(name: "Advanced Network Technology", code: "WRES2203", ch: 4, department_id: 1, course_component_id: 2, description: "This course is designed to provide student the overall concept and needs of network technologies in advance level. These are including network technologies, protocols, LAN, WAN, router and switch. This course will look into several aspects of the new network technologies such as IPv6 and wireless. This course also will examine the network criteria by identity the best practices to design a network. Finally the course will evaluate a plan and best proposal to design a network topology based on the organization needs. This course also emphasis on practical exercises by introducing a range of network technologies and protocols used in a network.")
Course.create(name: "Speaking Skills in English", code: "GTEE1109", ch: 3, course_component_id: 8, description: "")
Course.create(name: "Writing Skills in English", code: "GTEE1109", ch: 3, course_component_id: 8, description: "")
Course.create(name: "Introduction to Photography", code: "GNEK1037", ch: 2, course_component_id: 4, description: "")
Course.create(name: "Technical Writing", code: "GTEE1113", ch: 3, course_component_id: 8, description: "")
Course.create(name: "Presentation Skills at Workplace", code: "GTEE1111", ch: 3, course_component_id: 8, description: "")
Course.create(name: "Introduction to Pottery", code: "GREK1008", ch: 2, course_component_id: 4, description: "")

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

Enrollment.create(student_id: 1, course_id: 17, grade_id: 3, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 18, grade_id: 4, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 19, grade_id: 1, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 20, grade_id: 2, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 21, grade_id: 3, academic_year_semester_id: 4, completed: true)
Enrollment.create(student_id: 1, course_id: 41, grade_id: 8, academic_year_semester_id: 4, completed: true)

Enrollment.create(student_id: 1, course_id: 22, grade_id: 1, academic_year_semester_id: 5, completed: true)

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
