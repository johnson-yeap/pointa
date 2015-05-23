class AnalysisController < ApplicationController
	before_action :authenticate_user!

  	def index
  	end

  	def show
  	end

  	def deanlist
	  	@session = AcademicYearSemester.find_by_id(params[:id]) || AcademicYearSemester.last
			@students = Student.joins(:enrollments).where(enrollments: {academic_year_semester_id: @session.id}).uniq
      @bachelors = Bachelor.all
  	end
end

