module  DeviseWhitelist
	extend ActiveSupport::Concern 

	##在included devise_whitelist時，就會自動執行before_action.....
	included do 
		before_action :configure_permitted_parameters , if: :devise_controller?
	end 

	def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])	
  		devise_parameter_sanitizer.permit(:account_update, keys: [:name])	
  	end
end 