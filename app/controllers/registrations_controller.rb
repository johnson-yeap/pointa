class RegistrationsController < Devise::RegistrationsController
	# to build student object for nested form
  	# resource is a placeholder for user/etc.
	def new
		build_resource({})
      	self.resource.build_student
      	respond_with self.resource
	end

	# POST /resource
	# POST /resource
    def create
      build_resource(sign_up_params)

      resource.save
      yield resource if block_given?
      if resource.persisted?
        if resource.active_for_authentication?
          set_flash_message :block, :signed_up if is_flashing_format?
          sign_up(resource_name, resource)
          respond_with resource, location: after_sign_up_path_for(resource)
        else
          set_flash_message :info, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
          expire_data_after_sign_in!
          respond_with resource, location: after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords resource
        set_minimum_password_length
        respond_with resource
      end
    end



	def after_inactive_sign_up_path_for(resource)
		new_user_session_path
	end
end

	