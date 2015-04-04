class UsersController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource

	def index
	end

    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        
        if @user.save
               # success
            UserNotifier.signup_email(@user).deliver
            flash[:success] = "Your account has been successfully created"
            redirect_to dashboard_user_path(@user.id)
        else
            # fail
            flash[:danger] = "Please try again"
            redirect_to new_user_path
        end
    end

    def dashboard
        @student_id = @user.student_id
        @student = Student.find(@student_id)
        @academic_sessions = AcademicYearSemester.order('id DESC')
        # find_by method finds the first record, hence not applicable
        # @last_completed_enrollment = Enrollment.where(student_id: student_id, completed: true).last
        # @enrollments = Enrollment.all.where(academic_year_semester_id: 1, student_id: student_id, completed: true)
    end

    def fulfillment
    end

    def enrollment
    end

    def course
    end

    def analysis
    end

    private
        def user_params
            params.require(:user).permit(:username, :email, :password, :password_confirmation, student_attributes: [:id, :name, :matric_no, :department_id])
        end
end
