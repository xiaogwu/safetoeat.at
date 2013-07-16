require 'spec_helper'

describe "Static Pages" do
  
  describe "Home page" do
    it "should have the right heading" do
      visit root_path
      page.should have_selector('h1', :text => "Home Page")
    end
    it "should have the content 'Home Page'" do
      visit root_path
      page.should have_content('Home Page')
    end
    
  end

  describe "Admin page" do
    it "should have the right heading" do
      visit admin_path
      page.should have_selector('h1', :text => "Admin Page")
    end
    it "should have the content 'Admin Page'" do
      visit admin_path
      page.should have_content('Admin Page')
    end
  end
end
