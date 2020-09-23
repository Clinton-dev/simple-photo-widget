class StaticPagesController < ApplicationController
  require 'flickr'

  def index
   flickr = Flickr.new ENV['api_key']
   user = flickr.users(params[:username])
   @photos = user.photos
  end
end
