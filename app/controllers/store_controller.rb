class StoreController < ApplicationController
  def index
    @menus = Menu.order(:menuID)
  end
end
