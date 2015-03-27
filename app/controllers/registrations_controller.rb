class RegistrationsController < Devise::RegistrationsController
	# to build student object for nested form
  	# resource is a placeholder for user/etc.
	def new
		build_resource({})
      	self.resource.build_student
      	respond_with self.resource
	end

	def after_inactive_sign_up_path_for(resource)
		new_user_session_path
	end
end

	