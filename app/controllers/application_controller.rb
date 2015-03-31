class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # configure devise controller (adds new attributes)
  # before_action is a new syntax for before_filter, no difference
  before_action :configure_permitted_parameters, if: :devise_controller?

  # override the default after_sign_in_path_for(resource) to user dashboard
  def after_sign_in_path_for(resource)
	dashboard_user_path(resource)
  end

  protected
	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) { permitted_sign_up_params }
	    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
	    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
	  end

  private 
	def permitted_sign_up_params
		params.require(resource_name).permit(:username, :email, :password, :password_confirmation, :remember_me, student_attributes: [:name, :matric_no, :department_id])
	end
end
