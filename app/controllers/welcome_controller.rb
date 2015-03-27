class WelcomeController < ApplicationController
  def index
  	# bypass application.html.erb
  	render :layout => 'index'
  end
end
