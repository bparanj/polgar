
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