class CollectionsController < ApplicationController

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find_by(id: params[:id])
  end

  def new
  end

  def create
    @collection = Collection.new
    @collection.user_id = params[:user_id]
    @collection.bookmark_id = params[:bookmark_id]

    if @collection.save
      redirect_to "/collections/#{ @collection.id }"
    else
      render 'new'
    end
  end

  def edit
    @collection = Collection.find_by(id: params[:id])
  end

  def update
    @collection = Collection.find_by(id: params[:id])
    @collection.user_id = params[:user_id]
    @collection.bookmark_id = params[:bookmark_id]

    if @collection.save
      redirect_to "/collections/#{ @collection.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @collection = Collection.find_by(id: params[:id])
    @collection.destroy


    redirect_to "/collections"
  end
end
