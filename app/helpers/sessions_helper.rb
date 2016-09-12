module SessionsHelper

	#Logs in the given user.
	def sessions_new(user)
		session[:user_id] = user.id
	end

	# Remembers a user in a peristent session.
	def remember(user)
		user.remember 
	#	cookies[:user_id] = { value: user.id, expires: 20.years.from_now.utc } 
	# Writing the above line of code in short hand;
		cookies.permanent.signed[:user_id] = user.id
		cookies.permanent[:remember_token] = user.remember_token
	end

	# Returns the current logged-in user (if any).
	def current_user
		if (user_id = session[:user_id])  # Not a comparison but an assignment operator! :-) Meraviglioso!
			@current_user ||= User.find_by(id: user_id)
		elsif (user_id = cookies.signed[:user_id])
			user = User.find_by(id: user_id)
			if user && user.authenticated?(cookies[:remember_token])
				sessions_new user
				@current_user = user
			end
		end
	end

	# Returns true if the user is logged in, false otherwise.
	def logged_in?
		!current_user.nil?
	end

	#Logs out the current user.

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end
