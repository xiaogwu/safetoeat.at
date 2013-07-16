require 'spec_helper'

describe "Static Pages" do
  describe "Admin page" do
    it "should have the content 'Admin Page'" do
      visit '/static_pages/admin'
      page.should have_content('Admin Page')
    end
  end
end
