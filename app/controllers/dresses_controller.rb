class DressesController < ApplicationController
  before_action :find_dress, only: [:show, :edit, :update, :destroy]
  def new
    @toy = Toy.new
  end

  def create
    @dress = Dress.new(dress_params)
  end

  def update
  end

  def index
    @dresses = Dress.all
  end

  def show
  end

  def destroy
    @dress.destroy
    redirect_to dresses_path
  end

  private

  def dress_params
    params.require(:dress).permit(:name, :brand, :rating, :price, :description, :is_sold,:is_preorder, :color, :texture, :shop_id, :size_id, :length_id, :sleeve_id, :neckline_id, :silhouette_id, :shipping_cost)
  end


  def find_dress
    @dress = Dress.find(params[:id])
  end

end
