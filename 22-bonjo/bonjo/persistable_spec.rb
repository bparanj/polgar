require_relative 'persistable'

describe Persistable do
  it "should not insert tweets that is blank" do
    tweetdb = mock("tweetdb")
    tweetdb.should_not_receive(:insert)
    
    Persistable.save(tweetdb, nil, "does-not-matter", "does-not-matter")
  end
  
  it "should insert tweets that is not null" do
    tweetdb = mock("tweetdb")
    tweetdb.should_receive(:insert)
    
    Persistable.save(tweetdb, "Wonderful", "does-not-matter", "does-not-matter")    
  end
    
  it "should save the tweet, longitude and latitude" do
    tweetdb = mock("tweetdb")
    tweetdb.should_receive(:insert).with({'tweet' => "Wonderful", 'location' => [120, 100]})
    
    Persistable.save(tweetdb, "Wonderful", 120, 100)        
  end
end