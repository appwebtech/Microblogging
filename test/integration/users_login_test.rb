require 'test_helper'

def setup
	@user = users(:joseph)
end

class UsersLoginTest < ActionDispatch::IntegrationTest
	test "login with invalid information" do 
		get sessions_new_path
		assert_template 'sessions/new'
		post sessions_create_path, session: { email: "", password: "" }
		assert_template 'sessions/new'
		assert_not flash.empty?
		get root_path
		assert flash.empty?
	end



	test "login with valid information" do 
		get sessions_new_path
		post sessions_create_path, params: { session: { email: @user.email, 
																 password: "password" } }
		assert_redirected_to @user 
		follow_redirect!
		assert_template 'users/show'
		assert_select "a[href=?]", sessions_new_path, count: 0
		assert_select "a[href=?]", sessions_destroy_path
		assert_select "a[href=?]", user_path(@user)
		delete sessions_destroy_path
		assert_not is_logged_in?
		assert_redirected_to root_url
		# Simulate a user clicking logout in a second window.
		delete sessions_destroy_path
		follow_redirect!
		assert_select "a[href=?]", sessions_new_path
		assert_select "a[href=?]", sessions_destroy_path, count: 0
		assert_select "a[href=?]", user_path(@user), count: 0

	end
end


