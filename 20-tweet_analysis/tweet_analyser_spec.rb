class TweetAnalyzer
  def initialize(user)
    @user = user
  end
  
  def word_frequency
    {"one" => 1}
  end  
end

describe TweetAnalyzer do
  it "finds the frequency of words in a user's tweets" do
    user = double('user')
    analyzer = TweetAnalyzer.new(user)
    histogram = analyzer.word_frequency
    histogram["one"].should == 1
  end
end

# Command Query Separation violation
# It looks like client is tied to the implementation details (it is accessing a data structure)
# but it is actually any class that can respond to [] method