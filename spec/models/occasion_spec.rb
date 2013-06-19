require 'spec_helper'

describe 'Occasion' do
	before do
		@event = Factory.build(:event)
		@occasion = @event.occasions.build
	end
	it "should belong to an event" do
		@occasion.event.should_not be_nil
	end
	it "should have a time and date of occurrence" do
		dt = Time.now
		@occasion.occurred_at = dt
		@occasion.occurred_at.to_s.should == dt.to_s
	end
	it "should have a latitude and longitude" do
		@occasion.latitude = -85.000
		@occasion.longitude = 35.3232
		@occasion.latitude.should == -85.000
		@occasion.longitude.should == 35.3232
	end
	it "should have a note" do
		@occasion.note = "This thang went down"
		@occasion.note.should == "This thang went down"
	end
end
