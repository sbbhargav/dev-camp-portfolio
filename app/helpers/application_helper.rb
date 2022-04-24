module ApplicationHelper
	def login_helper
		if current_user.is_a?(User)
			button_to "Log out", destroy_user_session_path, method: :delete, data: { turbo: "false" } 
		else 
			(link_to "Log in", new_user_session_path) +
			"<br>".html_safe +
			(link_to "Register", new_user_registration_path )
    end 
	end
end
