class EnrollmentsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @current_student = current_user.student
    @academic_session = AcademicYearSemester.new
  	# @enrollments =  @current_student.enrollments.build
  end

  def create
    current_student = current_user.student
    # @enrollments =  current_student.enrollments.build(enrollment_params)
      if @enrollments.save
          flash[:success] = "You have successfully enrolled."
          redirect_to new_enrollment_path
      else
          # fail
          flash[:danger] = "Please try again."
          redirect_to new_enrollment_path
      end
  end

  private
    def enrollment_params
        params.require(:enrollment).permit(:student_id, :course_id)
    end

end
