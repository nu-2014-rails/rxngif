class TagAssociationsController < ApplicationController

  def index
    @tag_associations = TagAssociation.all
  end

  def show
    @tag_association = TagAssociation.find_by(id: params[:id])
  end

  def new
  end

  def create
    @tag_association = TagAssociation.new
    @tag_association.gif_id = params[:gif_id]
    @tag_association.tag_id = params[:tag_id]

    if @tag_association.save
      redirect_to "/gifs/#{ @tag_association.gif_id}"
    else
      render 'new'
    end
  end

  def edit
    @tag_association = TagAssociation.find_by(id: params[:id])
  end

  def update
    @tag_association = TagAssociation.find_by(id: params[:id])
    @tag_association.gif_id = params[:gif_id]
    @tag_association.tag_id = params[:tag_id]

    if @tag_association.save
      redirect_to "/tag_associations/#{ @tag_association.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @tag_association = TagAssociation.find_by(id: params[:id])
    @tag_association.destroy


    redirect_to "/tag_associations"
  end
end
