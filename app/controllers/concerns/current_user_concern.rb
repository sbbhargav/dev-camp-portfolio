module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
	end
	def guest_user
		OpenStruct.new(name: 'Guest', first_name: 'ss',last_name: 'ss', email: 'sb.bhargav@gmail.com')
	end
end