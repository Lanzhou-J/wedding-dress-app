class DressesController < ApplicationController
  before_action :find_dress, only: [:show, :edit, :update, :destroy]
  def new
    @dress = Dress.new
  end

  def create
    @dress = Dress.new(dress_params)

    if @dress.errors.any?
      render :new
    else
      flash[:success] = "You successfully created a new product!"
      @dress.save
      redirect_to @dress
    end
  end

  def update
    # update
  end

  def edit
    # edit
  end

  def index
    @dresses = Dress.all
  end

  def show
    # show
  end

  def destroy
    @dress.destroy
    redirect_to dresses_path
  end

  private

  def dress_params
    params.require(:dress).permit(
      :name, :brand, :rating, :price,
      :description, :is_sold, :is_preorder, :color, :texture, :shop_id,
      :size_id, :length_id, :sleeve_id, :neckline_id,
      :silhouette_id, :shipping_cost, :picture
    )
  end

  def find_dress
    @dress = Dress.find(params[:id])
  end
end
