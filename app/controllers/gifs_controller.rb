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
  
  def edit
    @gif = Gif.find_by_id(params['id'])
  end
  
  def update
    g = Gif.find_by_id(params['id'])
    g.image_url = params["image_url"]
    g.save
    
    redirect_to "/gifs/#{ g.id }"
  end
  
  def destroy
    g = Gif.find_by_id(params['id'])
    g.destroy
    
    redirect_to "/new_gif"
  end
  
  def index
    @gifs = Gif.all
  end
end