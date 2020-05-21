class DressesController < ApplicationController
  # Authenticate user before all the actions
  before_action :authenticate_user!
  # Before edit/show or delete a dress, find the dress using id from params
  before_action :find_dress, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  def new
    # new
  end

  def create
    # This action can create a new dress record with valid attributes
    # After the record is created and saved, redirect to the dress show page
    @dress = Dress.new(dress_params)
    @dress.shop = current_user.shop
    @dress.price = dress_params[:price].to_i * 100
    @dress.shipping_cost = dress_params[:shipping_cost].to_i * 100

    if @dress.errors.any?
      render :new
    else
      flash[:success] = 'You successfully created a new product!'
      @dress.save
      redirect_to @dress
    end
  end

  def update
    # This action can update information with edited dress attributes and redirect to dress show page
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
    # Minimize database queries
    @dresses = Dress.includes(:shop).all
  end

  def show
    # show
  end

  def destroy
    # This action can destroy a dress record and redirect to the index page
    @dress.destroy
    redirect_to dresses_path
  end

  private

  def dress_params
    params.require(:dress).permit(
      :name, :brand, :rating, :price,
      :description, :is_sold, :is_preorder, :color, :texture, :shop_id,
      :size_id, :length_id, :sleeve_id, :neckline_id,
      :silhouette_id, :shipping_cost, :picture, :new_or_preowned, :description
    )
  end

  def find_dress
    @dress = Dress.includes(:silhouette, :neckline, :sleeve, :size, :length, :shop).find(params[:id])
  end
end
