class AcademicYearSemestersController < ApplicationController

	def new
	end

	def create
		@academic_session = AcademicYearSemester.new(academic_session_params)
		if @academic_session.save
			flash[:success] = "You have successfully enrolled."
			redirect_to dashboard_user_path(current_user.id)
		else
	       	# fail
	        flash[:danger] = "Please try again."
	        redirect_to new_enrollment_path
	    end
	end

	def edit
	end

	def update
	end

	private
        def academic_session_params
        	# include :id in enrollments_attributes prevents duplicates in nested form
            params.require(:academic_year_semester).permit(:academic_year_id, :semester_id, enrollments_attributes: [:id, :student_id, :course_id, :grade_id])
        end
end
