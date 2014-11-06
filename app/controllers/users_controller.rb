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
            flash[:success] = "Your account has been successfully created"
            redirect_to root_path
        else
            # fail
            flash[:danger] = "Please try again"
            render 'new'
        end
    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end
end
