class StudentsController < ApplicationController

	def new
		@student = Student.new
	end

	def edit
	end

	def update
		@student = current_user.student
		# update_attributes - update multiple attribute of single object and also pass model based validation.
		if @student.update_attributes(student_params)
			flash[:success] = "You have successfully enrolled."
			redirect_to dashboard_user_path(current_user.id)
		else
	       	# fail
	        flash[:danger] = "Please try again."
	        redirect_to prediction_index_path
	    end
	end

	private
        def student_params
        	# include :id in enrollments_attributes prevents duplicates in nested form
            params.require(:student).permit(:id, :name, :matric_no, :department_id, enrollments_attributes: [:id, :student_id, :course_id, :grade_id, :academic_year_semester_id, :completed])
        end
end
