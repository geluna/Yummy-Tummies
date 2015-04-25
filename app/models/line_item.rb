class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :menu
  belongs_to :cart

  def total_price
    menu.price
  end

end
