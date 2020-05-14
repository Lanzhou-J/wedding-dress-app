class ShopsController < ApplicationController
  before_action :find_shop, only: [:show, :edit, :update, :destroy]
  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user = current_user
    @shop.opening_time = Date.today

    if @shop.errors.any?
      render :new
    else
      flash[:success] = "You successfully created a new shop!"
      @shop.save
      redirect_to @shop
    end
  end
  
  def index
  end

  def update
  end

  def edit
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def shop_params
    params.require(:shop).permit(
      :name, :merchant_or_personal, :location, :description, :has_physical_store
    )
  end

  def find_shop
    @shop = Shop.find(params[:id])
  end 
end
