require 'rails_helper'


describe "the signup process", :type => :feature do
	before do
		@user = FactoryGirl.build :user
	end
	it "signs up succesfully" do
		visit "/users/sign_up"
		fill_in "user_name", with: @user.name
		fill_in "user_email", with: @user.email
		fill_in "user_password", with: @user.password
		fill_in "user_password_confirmation", with: @user.password_confirmation
		click_button "Sign up"
		expect(page).to have_content "Log out"
	end
	
	it "does not sign up succesfully" do
		visit "/users/sign_up"
		fill_in "user_name", with: "qarwestrxdhcfgjhvkbjnk"
		fill_in "user_email", with: "qwertyu"
		fill_in "user_password", with: "12345"
		fill_in "user_password_confirmation", with: "12345"
		click_button "Sign up"
		expect(page).to have_content "Sign up"
	end
end