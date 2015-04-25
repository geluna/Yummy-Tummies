class AcctsController < ApplicationController
  before_action :set_acct, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @accts = Acct.all
    respond_with(@accts)
  end

  def show
    respond_with(@acct)
  end

  def new
    @acct = Acct.new
    respond_with(@acct)
  end

  def edit
  end

  def create
    @acct = Acct.new(acct_params)
    @acct.save
    respond_with(@acct)
  end

  def update
    @acct.update(acct_params)
    respond_with(@acct)
  end

  def destroy
    @acct.destroy
    respond_with(@acct)
  end

  private
    def set_acct
      @acct = Acct.find(params[:id])
    end

    def acct_params
      params.require(:acct).permit(:credit, :debit, :balance, :user_id)
    end
end
