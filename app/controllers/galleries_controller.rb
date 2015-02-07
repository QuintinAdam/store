class GalleriesController < ApplicationController
  before_action :find_gallery, only: [:show]
  def index
    @galleries = Gallery.all
  end

  def new
    @categories = ["Every day" , "Bouquets", "Ceremony", "Reception", "Holidays", "Events", "Sympathy", "Featured event"]
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to @gallery, notice: 'Successfully created.'
    else
      render 'new', alert: 'Error'
    end
  end

  def show
    if params[:category]
      @galleries = Gallery.where(category: params[:category])
    else  
      @galleries = Gallery.all
    end  
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def find_gallery
    @gallery = Gallery.find(params[:id])
  end
  def gallery_params
    params.require(:gallery).permit(:title, :description, :photo, :category)
  end
end
