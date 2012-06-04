require "spec_helper"

describe "Twitter stream " do
  
  it "should display the stream for a given location" do
    visit "/"

    fill_in "longitude", :with => "-121"
    fill_in "latitude",  :with => "30"

    click_button "Search" 

    page.should have_content("Latest Tweets")    
  end
  
end