#require 'spec_helper'

#describe "UserPages" do
#  describe "GET /user_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get user_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end


require 'spec_helper'

describe "User pages" do

	subject { page }

#	describe "signup page" do
#		before { visit signup_path }

#		it { should have_selector('h1',    text: 'Sign up') }
#		it { should have_selector('title', text: 'Sign up') }
#	end

	describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

		it { should have_selector('h1', 	text: user.name) }
		it { should have_selector('title', 	text: user.name) }
	end

	describe "signup" do

		before { visit signup_path }

		let(:submit) { "Create my account" }

		describe "with the invalid information" do
			it "should not create a user" do
				expect { click_button submit }.not_to change(User, :count)
			end
		end

		describe "with valid information" do
			before do
				fill_in "Name",			with: "Example User"
				fill_in "Email",		with: "user@example.com"
				fill_in "Password",		with: "foobar"
				fill_in "Confirmation", with: "foobar"
			end

			it "should create a user" do
				expect { click_button submit }.to change(User, :count).by(1)
			end

			describe "after saving the user" do

		#	it { should have_link('Sign out') }
			end
		end
	end
end

