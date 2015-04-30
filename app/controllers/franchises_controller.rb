class FranchisesController < ApplicationController
  before_action :set_franchise, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index

    #@franchises = Franchise.all
    if current_user.admin?
      @franchises = Franchise.all
      #@schools = School.pending
    else
      @franchises = Franchise.approved
    end
    #respond_with(@franchises)

  end

  def fran_approve
  end

  def fran_process_approve
    @fran_flag = Franchise.find_by(params[:id])
    
    respond_to do |format|
      if @fran_flag.franchise_approve == false
        @fran_flag.update_attributes(franchise_approve: true)
        format.html { redirect_to franchises_url}
      else
        @fran_flag.update_attributes(franchise_approve: false)
        format.html { redirect_to franchises_url}
    end
    end

  end

  def show
    @franchises = Franchise.all
    #@schools = School.where(franchise_id:current_user.id)
    @schools = School.where(franchise_id: params[:id])
    @menus = Menu.where(franchise_id:params[:id])
    @orders = Order.all
    @users = User.all
    @hash = Gmaps4rails.build_markers(@schools) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude  
    end 
    
    @hash1 = Gmaps4rails.build_markers(@schools) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude  
    end 
    
    respond_with(@franchise)
  end

  def new
    @franchise = Franchise.new
    respond_with(@franchise)
  end

  def edit
  end

  def create
    @franchise = Franchise.new(franchise_params.merge(
                user_id:  current_user.id
                ))
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
