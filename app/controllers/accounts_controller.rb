class AccountsController < ApplicationController
 # before_action :set_account [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  
  respond_to :html

  def index
    @accounts = Account.all
    #@accounts = Account.where(id:current_user.id)
    respond_with(@accounts)
  end

  def show
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
    @account.save
    respond_with(@account)
  end

  def update
    @account.update(account_params)
    respond_with(@account)
  end

  def destroy
    @account.destroy
    respond_with(@account)
  end

 private
    def set_account
      #@accounts = Account.where(id:current_user.id)
      @account = Account.find(params[:id])
    end

    def account_params
     # params[:account]
      params.require(:account).permit(:created_at, :email, :credit, :debit, :acctbal)
    end
end
