class LineItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :cart
  has_many :line_items, dependent: :destroy
  
end
