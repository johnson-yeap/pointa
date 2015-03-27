class UsersController < ApplicationController

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
