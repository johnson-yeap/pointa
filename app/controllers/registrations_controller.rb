class RegistrationsController < Devise::RegistrationsController
	# to build student object for nested form
  	# resource is a placeholder for user/etc.
	def new
		build_resource({})
      	self.resource.build_student
      	respond_with self.resource
	end
end

	