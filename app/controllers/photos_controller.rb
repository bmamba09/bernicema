class PhotosController < ApplicationController

  http_basic_authenticate_with name: "bmamba", password: "password"

  def index
    @photos = Photo.order('date DESC')
  end
 
  def show
    @photo = Photo.find(params[:id])
  end
 
  def new
    @photo = Photo.new
  end
 
  def edit
    @photo = Photo.find(params[:id])
  end
 
  def create
    @photo = Photo.new(photo_params)
 
    if @photo.save
      redirect_to root_path
    else
      render 'new'
    end
  end
 
  def update
    @photo = Photo.find(params[:id])
 
    if @photo.update(photo_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end
 
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
 
    redirect_to :back
  end
 
  private
    def photo_params
      params.require(:photo).permit(:photo, :image, :title, :description, :date, :tags, :commute, :cooked, :diningout, :exercise, :entertainment, :family, :friends, :outdoors, :sleptwell, :spiritual, :travel)
    end

end

