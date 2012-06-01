class TweetAnalyzer
  def initialize(user)
    @user = user
  end
  
  def word_frequency
    @frequency = Hash.new{0}
    @user.recent_tweets.each do |tweet|
      tweet.split(/\s/).each do |word|
        @frequency[word] += 1
      end
    end
  end  
  
  def histogram(text)
    @frequency[text]
  end
end

describe TweetAnalyzer do
  before(:each) do
    @user = double('user')
    expected_tweets = ["one two", "two"]
    @user.stub(:recent_tweets).and_return expected_tweets
  end
  
  it "finds the frequency of words in a user's tweets" do    
    analyzer = TweetAnalyzer.new(@user)    
    analyzer.word_frequency

    analyzer.histogram("one").should == 1
  end
  
  it "find the frequency of words in a user's tweets that appears multiple times" do    
    analyzer = TweetAnalyzer.new(@user)
    analyzer.word_frequency
    
    analyzer.histogram("two").should == 2
  end
  
  it "asks the user for recent tweets" do    
    user = double('user')
    expected_tweets = ["one two", "two"]
    user.should_receive(:recent_tweets).and_return expected_tweets
    
    analyzer = TweetAnalyzer.new(user)
    analyzer.word_frequency
  end
  
end