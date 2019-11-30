module ApplicationHelper

	##this is test example to display the result on the home page
	def sample_helper
		## "<p>My Helper</p>".html_safe  bag
		content_tag(:div,"my content",class: "my-class")
	end

	def login_helper style 
		if current_user.is_a?(GuestUser) 
			(link_to "Register", new_user_registration_path,class: style) + 
      		"  ".html_safe +
      		(link_to "Login", new_user_session_path ,class: style) 
    	else 
      		 link_to "Logout", destroy_user_session_path ,method: :delete ,data: { confirm: 'Are you sure to logout?'} ,class: style
    	end 
	end

	def source_helper
		if session[:source] 
			greeting = "Thank you for visit me from  #{session[:source]}"

			content_tag(:p,greeting, class: "source-greeting")
        	
        end 
	end 

	def nav_item
		[
			{
				url: root_path,
				title: 'Home'
			},
			{
				url: about_path,
				title: 'About Me'
			},
			{
				url: contact_path,
				title: 'Contact'
			},
			{
				url: blogs_path,
				title: 'Blog'
			},
			{
				url: portfolios_path,
				title: 'Portfolio'
			}
		]
	end 

	def nav_helper style, tag_style
		nav_links = ''

		nav_item.each do |item|
			nav_links << "<#{tag_style}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_style}>"
		end

		nav_links.html_safe
	end

	def active? path
		"active" if current_page? path
	end
end
 