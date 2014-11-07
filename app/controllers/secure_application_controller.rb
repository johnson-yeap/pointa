class SecureApplicationController < ApplicationController
  include SessionsHelper
    
  before_action :require_login, except: [:new, :create]
 
  private
 
  def require_login
    unless logged_in?
      flash[:danger] = "You must be logged in to access this section"
      redirect_to login_path # halts request cycle
    end
  end
end
