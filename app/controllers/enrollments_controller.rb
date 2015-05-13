class EnrollmentsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @current_student = current_user.student
    @student_completed_enrollments = @current_student.enrollments.where(completed: true)

    cgpa_excluded_enrollments = @student_completed_enrollments.where("grade_id = ? OR course_id IN (?)", 8, [22, 40, 42, 43])
    cgpa_included_enrollments = @student_completed_enrollments - cgpa_excluded_enrollments

    current_gpa = cgpa_included_enrollments.inject(0) { |sum, e| sum + e.grade.points * e.course.ch }
    current_total_ch = cgpa_included_enrollments.inject(0) { |sum, e| sum + e.course.ch } 
    @current_cgpa = (current_gpa / current_total_ch).round(2) if current_total_ch != 0

    @incomplete_academic_sessions = AcademicYearSemester.where.not(id: @current_student.academic_year_semesters)
    @incomplete_courses = Course.where.not(id: @current_student.courses)
  	# @enrollments =  @current_student.enrollments.build
  end

  def create
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
        params.require(:enrollment).permit(:student_id, :course_id, :grade_id, :academic_year_semester_id, :completed)
    end

end
