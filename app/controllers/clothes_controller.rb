class ClothesController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show]
  def index
    @clothes = Clothe.all
  end

  def show
    @clothe = Clothe.find(params[:id])
  end

  # def new
  #   @clothe = Clothe.new
  #   @clothe.save
  # end

  def create
    @clothe = Clothe.new(clothe_params)
    if @clothe.save
      redirect_to clothe_path(@clothe)
    else
      render :new
    end
  end

  def edit
    @clothe = Clothe.find(params[:id])
  end

  def update
    @clothe = Clothe.find(params[:id])
    @clothe.update(clothe_params)
  end

  def destroy
    @clothe = Clothe.find(params[:id])
    @clothe.destroy
  end

  private

  def clothe_params
    params.require(:clothe).permit(:title, :descripton, :location, :gender, :occasion, :latitude, :longitude, :user_id, photos: [])
  end
end
