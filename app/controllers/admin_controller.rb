class AdminController < ApplicationController
  def index
    @total_orders = Order.count
    @franchise = Franchise.all
    @schools = School.all
    @students = Student.all
    @menus = Menu.all
  end
  
  def admin?
    admin
  end
  
end
