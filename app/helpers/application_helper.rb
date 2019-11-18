module ApplicationHelper

	##this is test example to display the result on the home page
	def sample_helper
		"<p>My Helper</p>".html_safe 
	end

	def login_helper
		if current_user.is_a?(User) 
      		 link_to "Logout", destroy_user_session_path ,method: :delete ,data: { confirm: 'Are you sure to logout?'} 
    	else 
      		(link_to "Register", new_user_registration_path ) + 
      		"<br>".html_safe +
      		(link_to "Login", new_user_session_path ) 
    	end 
	end
end
 