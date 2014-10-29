class GifsController < ApplicationController
  def new
  end
  
  def create
    g = Gif.new
    g.image_url = params["image_url"]
    g.save
    
    redirect_to "/gifs/#{ g.id }"
  end
  
  def show
    @gif = Gif.find_by_id(params['id'])
  end
end