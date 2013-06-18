require 'spec_helper'

feature 'Add Events', %q{
	As a registered user
	I want to add Events
} do
	background do
		login_user Factory(:user)
	end

	scenario "Add Basic Event" do
		fill_in "Name", :with => "New_Event"
		fill_in "Description", :with => "Description"
		click_button "Create Event"
		page.should have_content("New_Event")
		page.should have_content("Description")
		page.current_path.should == events_path
	end
end