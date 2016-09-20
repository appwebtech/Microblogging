class AccountActivationsController < ApplicationController

	def edit
		user = User.find_by(email: params[:email])
		if user && user.authenticated?(:activation, params[:id])
		else
			#Handle invalid link.
		end
	end
end
