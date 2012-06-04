class TweetsController < ApplicationController
  def index
    longitude = params[:longitude].to_i
    latitude = params[:latitude].to_i
    @messages = Tweet.near(longitude, latitude)
  end

end
