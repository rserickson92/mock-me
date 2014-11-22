module UserHelper
	def display_name(user)
		user == current_user.name ? "You" : user
	end
end
