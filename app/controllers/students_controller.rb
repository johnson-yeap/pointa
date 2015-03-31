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
			redirect_to new_enrollment_path
		else
	       	# fail
	        flash[:danger] = "Please try again."
	        redirect_to new_enrollment_path
	    end
	end

	private
        def student_params
            params.require(:student).permit(:id, :name, :matric_no, :department_id, enrollments_attributes: [:student_id, :course_id])
        end
end
