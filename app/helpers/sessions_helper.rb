module SessionsHelper

	#Logs in the given user.
	def sessions_new(user)
		session[:user_id] = user.id
	end
end
