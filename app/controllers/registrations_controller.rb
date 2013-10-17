class RegistrationsController < Devise::RegistrationsController
	# protect from forgery
   protected
		def after_sign_up_path_for(resource)
		        "posts/id"
		end 

		def after_sign_in_path_for(resource)
		        "posts/id"
		end 
end