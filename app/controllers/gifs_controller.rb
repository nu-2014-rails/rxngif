class GifsController < ApplicationController
  before_action :check_if_signed_in
  
  def check_if_signed_in
    unless session[:user_id].present?
      redirect_to "/login", notice: "sign in and make sure cookies are enabled"
    end
  end
  
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