module ApplicationHelper
	def login_helper style
		if current_user.is_a?(GuestUser)
			(link_to "Log in", new_user_session_path,class: style) +
			"".html_safe +
			(link_to "Register", new_user_registration_path,class: style )
			
		else 
			button_to "Log out", destroy_user_session_path, method: :delete, data: { turbo: "false" } ,class: style
    end 
	end

	def source_helper(layout_name)
		if session[:source]
			greeting="Thanks for visiting me from #{session[:source]} #{layout_name}"	
    	content_tag(:p,greeting, class: "source-greeting")
    end
	end
end
