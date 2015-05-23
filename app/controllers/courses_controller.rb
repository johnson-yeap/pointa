class CoursesController < ApplicationController
	def new
	end

	def create
	end

	def index
		if params[:course_code]
			@course = Course.find_by_code(params[:course_code].upcase)
			if @course != nil
				redirect_to course_path(params[:course_code].upcase)
			else
				flash[:danger] = "Course not found. Please try again."
				redirect_to  courses_path
			end
		end
	end

	def show
		@course = Course.find_by(code: params[:code])

		num_lecturers = @course.lecturers.count
		@lecturers = ""
		if num_lecturers == 0
			@lecturers = "N/A"
		elsif num_lecturers == 1
			@course.lecturers.each do |lecturer|
				@lecturers = lecturer.name 
			end
		elsif num_lecturers > 1
			@course.lecturers.each_with_index do |lecturer, index|
				if index == num_lecturers-1
					@lecturers += lecturer.name
				else
					@lecturers = lecturer.name + ", " + @lecturers 
				end
			end
		end
	end

	def edit
	end

	def update
	end
end
