require 'rails_helper'

describe "the tweet deleting process", :type => :feature do
	before do
		@tweet = FactoryGirl.create :tweet
	end
	it "deletes tweet succesfully" do
	 	visit "users/sign_in"
		fill_in "user_email", with: @tweet.user.email
		fill_in "user_password", with: "123456"
		click_button "Log in"
	 	visit "/"
	 	page.find(:xpath, "//a[@href='/tweets/#{@tweet.id}']").click
	 	expect(page).not_to have_content @tweet.content
	 end


	#it "fails to delete tweet" do
	#	visit "users/sign_in"
	#	fill_in "user_email", with: @tweet.user.email
	#	fill_in "user_password", with: "123456"
	#	click_button "Log in"
	#	visit "/"
	#	page.find(:xpath, "//a[@href='/tweets/#{@tweet.id}']").click
	#	expect(page).not_to have_content @tweet.content
	# end
end