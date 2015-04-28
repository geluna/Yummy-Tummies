class FranchisesController < ApplicationController
  before_action :set_franchise, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @franchises = Franchise.all
    #respond_with(@franchises)
  end

  def show
    @franchises = Franchise.where(user_id:current_user.id)
    @schools = School.where(franchise_id:current_user.id)
    @menus = Menu.where(franchise_id:current_user.id)
    @orders = Order.all
    respond_with(@franchise)
  end

  def new
    @franchise = Franchise.new
    respond_with(@franchise)
  end

  def edit
  end

  def create
    @franchise = Franchise.new(franchise_params)
    @franchise.save
    respond_with(@franchise)
  end

  def update
    @franchise.update(franchise_params)
    respond_with(@franchise)
  end

  def destroy
    @franchise.destroy
    respond_with(@franchise)
  end

  private
    def set_franchise
      @franchise = Franchise.find(params[:id])
    end

    def franchise_params
      params.require(:franchise).permit(:name, :address)
    end
end
