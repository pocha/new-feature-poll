require 'spec_helper' 

describe "Added poll: " do
	before :each do
		@poll = Poll.create(:question => "sample question")
		@field1 = @poll.fields.create(:content => "hi")
		@field2 = @poll.fields.create(:content => "hello")
		visit poll_path(@poll.id)
	end
	after :each do
		Poll.delete_all
		Field.delete_all
		Result.delete_all
	end

	it "poll_path should show up the poll" do
		page.should have_content @poll.question
		#save_and_open_page
	end

	describe "correct submission field 1 - hi: " do
		before :each do
			click_link @field1.content
		end

		it "should register the poll data" do
			Result.find_by_field_id_and_poll_id(@field1.id, @poll.id).should_not be_nil
		end

		it "should show the thank you message with feedback text" do
			page.should have_content "Thank you"
			page.should have_content "Any feedback you have on the feature (optional)"
			#save_and_open_page
		end

		describe "Feedback submitted: " do
			before :each do
				fill_in "result_feedback", :with => "some feedback"
				click_on "Submit"
			end

			it "should have the feedback recorded" do
				Result.find_by_feedback("some feedback").should_not be_nil
			end

			it "should show final thank you page" do
				page.should have_content "All done"
			end
		end
	end
end
