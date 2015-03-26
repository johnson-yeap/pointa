class RegistrationsController < Devise::RegistrationsController
	# configuration devise model (adds new attributes)
  	# before_action is a new syntax for before_filter, no difference
  	before_action	 :configure_permitted_parameters, if: :devise_controller?
	
  	# resource is a placeholder for user/etc.
	def new
		build_resource({})
      	self.resource.build_student
      	respond_with self.resource
	end

  	protected	
		def configure_permitted_parameters
	  		devise_parameter_sanitizer.for(:sign_up) { permitted_params }
		end

	private 
		def permitted_params
			params.require(resource_name).permit(:username, :email, :password, :password_confirmation, student_attributes: [:name, :matric_no, :department_id])
		end
end

	