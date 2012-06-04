require "em-mongo"
require 'eventmachine'
require 'em-http'
require 'json'

require_relative 'persitable'
require_relative 'parser'
require_relative 'constants'

include Constants

EM.run do  
  db = EM::Mongo::Connection.new(DB_HOST).db(DB_NAME)
  tweetdb = db.collection('tweets')
  
  http = EM::HttpRequest.new(TWITTER_URL, { :port => SSL_PORT}).post(
                    :head => { 'Authorization' => [ USERNAME, PASSWORD ] } , 
                    :body => {"locations" => LOCATION},
                    :keepalive => true,
                    :timeout => -1)

  buffer = ""
  http.stream do |chunk|
    buffer += chunk
    tweet = Parser.parse_tweet(buffer)
    Persistable.save(tweetdb, tweet, LONGITUDE, LATITUDE)
  end
  
  http.errback do
     p Time.new.to_s+"Error: #{http.error}"
     EM.stop_event_loop
  end
end  



