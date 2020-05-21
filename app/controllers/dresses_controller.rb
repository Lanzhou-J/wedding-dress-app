class DressesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_dress, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  def new
    # new
  end

  def create
    # This action can create a new dress record with valid attributes
    # After the record is created and saved, redirect to the dress show page
    @dress = Dress.new(dress_params)

    if @dress.errors.any?
      render :new
    else
      flash[:success] = 'You successfully created a new product!'
      @dress.save
      redirect_to @dress
    end
  end

  def update
    if @dress.update(dress_params)
      redirect_to @dress
    else
      render :edit
    end
  end

  def edit
    # edit
  end

  def index
    # This action returns all of the dresses records and sends them to index view
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
