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
			redirect_to dashboard_user_path(current_user.username)
		else
	       	# fail
	       	enrollments_hash = params[:student][:enrollments_attributes]
	  		selected_courses = []
	       	enrollments_hash.each do |enrollment|
       			# enrollment is an array of size 2, where the last element is a hash.			
       			selected_courses <<  enrollment.last["course_id"] if enrollment.last.has_key?("course_id")
	       	end

	        flash[:notice] = "You may consider the following paths to achieve First Class Honours."
	        redirect_to prediction_index_path(selected_courses: selected_courses)
	    end
	end

	private
        def student_params
        	# include :id in enrollments_attributes prevents duplicates in nested form
            params.require(:student).permit(:id, :name, :matric_no, :academic_year_id, :department_id, enrollments_attributes: [:id, :student_id, :course_id, :grade_id, :academic_year_semester_id, :completed, :_destroy])
        end
end
