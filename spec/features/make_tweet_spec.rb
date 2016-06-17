require 'rails_helper'

describe "the tweet creation process", :type => :feature do
	before do
		log_in_new_user
		@tweet = FactoryGirl.build :tweet
	end
	it "creates tweet succesfully" do
	 	visit "/"
	 	fill_in "tweet_content", with: @tweet.content
	 	click_button "Tweet it"
	 	expect(page).to have_content @tweet.content
	 end

	it "fails to create tweet" do
		visit "/"
		fill_in "tweet_content", with: ("a"*141)
		click_button "Tweet it"
		expect(page).to have_field "tweet_content", with: ("a"*141)
	end
end