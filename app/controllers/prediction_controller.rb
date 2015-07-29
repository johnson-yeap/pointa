class PredictionController < ApplicationController
  before_action :authenticate_user!
  
  def index

  	@available_courses = []
  	@selected_courses = params[:selected_courses].uniq
 	  @selected_courses.each do |course_id|
 		course = Course.find(course_id)
 		course_data = []
 		course_data << course.name
 		course_data << course.ch
 		@available_courses << course_data
 	end

  	# available_courses = [["a",2],["b",3],["c",3],["d",3],["e",5],["f",2],["g",4],["h",4],["i",4],["j",4],["k",3]]
  	

  	current_student = current_user.student
  	student_enrollments = current_student.enrollments
  	gpa_included_enrollments = student_enrollments.where.not("grade_id = ? OR course_id IN (?) OR completed = ?", 8, [22, 40, 42, 43], false)
  	gpa = gpa_included_enrollments.inject(0) { |sum, p| sum + p.grade.points * p.course.ch }
  	ch = gpa_included_enrollments.inject(0) { |sum, p| sum + p.course.ch }

  	SimpleGa::GeneticAlgorithm::Chromosome.set_params(@available_courses, gpa, ch)

  	search = SimpleGa::GeneticAlgorithm::GeneticSearch.new(1000, 100) # new instance
  	@results = search.run
  	@best_result = search.best_chromosome
  end
end
