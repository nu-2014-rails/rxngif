class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def new
  end

  def create
    @comment = Comment.new
    @comment.contents = params[:contents]
    @comment.gif_id = params[:gif_id]
    @comment.user_id = cookies[:user_id].to_i

    if @comment.save
      redirect_to "/gifs/#{ @comment.gif_id }"
    else
      render 'new'
    end
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.contents = params[:contents]
    @comment.gif_id = params[:gif_id]

    if @comment.save
      redirect_to "/comments/#{ @comment.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    gif_id = @comment.gif_id
    @comment.destroy


    redirect_to "/gifs/#{gif_id}"
  end
end
