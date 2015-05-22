class CoursesController < ApplicationController
	def new
	end

	def create
	end

	def index
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
