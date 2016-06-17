def log_in_new_user
	user = FactoryGirl.create :user
	visit "users/sign_in"
	fill_in "user_email", with: user.email
	fill_in "user_password", with: "123456"
	click_button "Log in"
end