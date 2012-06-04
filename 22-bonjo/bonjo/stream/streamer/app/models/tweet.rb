class Tweet
  include MongoMapper::Document
  
  key :tweet, String
  key :location, Array

  ensure_index [[:location, '2d']]  

  def self.near(longitude, latitude)
    where(:location => {'$near' => [longitude, latitude]}).limit(50).all
  end
end