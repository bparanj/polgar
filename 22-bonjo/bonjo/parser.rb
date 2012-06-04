class Parser
  def self.parse_tweet(buffer)
    while line = buffer.slice!(/.+\r?\n/)
      if line.length > 5
        tweet = JSON.parse(line)

        return tweet['text']
      end
    end
  end
end