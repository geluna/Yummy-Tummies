class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @menus = Menu.order(:menuID)
  end
end
