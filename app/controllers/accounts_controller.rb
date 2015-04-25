class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  respond_to :html

  def index
    @accounts = Account.all
    #@accounts = Account.where(id:current_user.id)
    
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

 
    def set_account
      #@accounts = Account.where(id:current_user.id)
      @account = Account.find(params[:id])
    end

    def account_params
      params[:account]
    end
end
