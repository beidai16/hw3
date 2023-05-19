class PostsController < ApplicationController
  def show
    @post = Post.find_by({ "id" => params["id"] })
    @place = Place.find_by({ "id" => @post["place_id"] })
  end
end
