class AccountsController < ApplicationController
 # before_action :set_account [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  
  respond_to :html

  def index
   # @accounts = Account.all
    #@accounts = Account.where(id:current_user.id)
    if current_user.admin?
      @accounts = Account.all
    else
      @accounts = Account.where(user_id:current_user.id)
      #@accounts = Account.where(email:current_user.email)
    end
    respond_with(@accounts)
  end

  def show
    if current_user.admin?
      @accounts = Account.all
    else
      @accounts = Account.where(email:current_user.email)
    end
    respond_with(@account)
  end

  def new
    @account = Account.new
    respond_with(@account)
  end

  def edit
  end

  def create
    @account = Account.new(account_params)
    @account.user_id = current_user.id
    @account.email = current_user.email
    
    if @account.save
      redirect_to @account
    else 
      render 'new'
    end
   # respond_with(@account)
   
  end

  def update
    @account.update(account_params)
    respond_with(@account)
  end

  def destroy
    @account.destroy
    respond_with(@account)
  end
  
  def withdrawl
    @account = Account.new(account_params)
    @account.email = current_user.email
    @account.user_id = current_user.id
    
  end
  
def deposit
   @account = Account.new(account_params)
    @account.email = current_user.email
    @account.user_id = current_user.id
    respond_to do |format|
      if @account.save
        format.html { redirect_to accounts_url, notice: 'Thank you and enjoy.' }
       format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
end 


 private
    def set_account
      #@accounts = Account.where(id:current_user.id)
      @account = Account.find(params[:id])
    end

    def account_params
     # params[:account]
      params.require(:account).permit(:created_at, :email, :credit, :debit, :acctbal, :depotype)
    end
end
