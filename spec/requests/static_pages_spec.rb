require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the base title" do
      visit help_path
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit help_path
      page.should_not have_selector('title', :text => '| Help')
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the base title" do
      visit about_path
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
     visit about_path
      page.should_not have_selector('title', :text => '| About')
    end

  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the base title" do
      visit contact_path
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit contact_path
      page.should_not have_selector('title', :text => '| Contact')
    end
  end
end

#describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end


