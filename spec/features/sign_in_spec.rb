require 'rails_helper'

describe "the signin process", :type => :feature do
	before do
		@user = FactoryGirl.create :user
	end
	it "signs in succesfully" do
		visit "/users/sign_in"
		fill_in "user_email", with: @user.email
		fill_in "user_password", with: "123456"
		click_button "Log in"
		expect(page).to have_content "Log out"
	end

	context "when is not success" do

	end
end