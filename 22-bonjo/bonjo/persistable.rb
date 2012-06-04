class Persistable
  def self.save(tweetdb, tweet, longitude, latitude)
    unless tweet == nil
      tweetdb.insert({'tweet' => tweet, 'location' => [longitude, latitude]})
    end
  end
end
