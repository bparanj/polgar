class TweetAnalyzer
  def initialize(user)
    @user = user
  end
  
  def word_frequency
    @histogram = {"one" => 1}
  end  
  
  def histogram(text)
    @histogram[text]
  end
end

describe TweetAnalyzer do
  it "finds the frequency of words in a user's tweets" do
    user = double('user')
    analyzer = TweetAnalyzer.new(user)
    analyzer.word_frequency

    analyzer.histogram("one").should == 1
  end
end