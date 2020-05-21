class ShopsController < ApplicationController
  # Authenticate user before all the actions
  before_action :authenticate_user!
  # Before edit/show or delete a shop, find the shop using id from params
  before_action :find_shop, only: [:show, :edit, :update, :destroy]
  def new
    # new
  end

  def create
    # This action can create a new shop record with valid attribute
    @shop = Shop.new(shop_params)
    # Set the user of the shop as the current user
    @shop.user = current_user
    @shop.opening_time = Date.today
    # After the record is created and saved, redirect to the shop show page
    if @shop.errors.any?
      render :new
    else
      flash[:success] = 'You successfully created a new shop!'
      @shop.save
      redirect_to @shop
    end
  end

  def update
    # This action can update information with edited shop info and redirect to shop show page
    if @shop.update(shop_params)
      redirect_to @shop
    else
      render :edit
    end
  end

  def edit
    # edit
  end

  def index
    # This action returns all of the shops records and sends them to index view
    # Minimize database queries
    @shops = Shop.includes(:dresses).all
  end

  def show
    # show
  end

  def destroy
    # This action can destroy a shop record and redirect to the index page
    @shop.destroy
    redirect_to shops_path
  end

  private

  def shop_params
    params.require(:shop).permit(
      :name, :merchant_or_personal, :location,
      :description, :has_physical_store, :picture
    )
  end

  def find_shop
    # Minimize the database queries using ".include"
    @shop = Shop.includes(:venue, :dresses).find(params[:id])
  end
end
