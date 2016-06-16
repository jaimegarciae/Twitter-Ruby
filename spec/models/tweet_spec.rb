require 'rails_helper'

RSpec.describe Tweet, :type => :model do
	let(:tweet) { FactoryGirl.build :tweet } 

	describe "associations" do
		it { should belong_to(:user) }
	end

	describe "validations" do
		it { should validate_presence_of(:content) }
		it { should validate_length_of(:content).is_at_most(140) }
		it { should validate_length_of(:content).is_at_least(1) } 
	end

	describe "scopes" do
		describe "default scope" do
			it "should return the tweets on descending order by created_at" do
				10.times{ FactoryGirl.create :tweet }
				expect(Tweet.all).to eq(Tweet.order(created_at: :desc))
			end
		end
	end
end
