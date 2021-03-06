class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  has_many :menus, through: :line_items
  belongs_to :account
  belongs_to :user
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  validates :name, :address, :email, presence: true
  #validates :pay_type, inclusion: PAYMENT_TYPES
  
 def add_line_items_from_cart(cart)
  cart.line_items.each do |item|
    item.cart_id = nil
    line_items << item
  end
 end
 
 def total_price
  line_items.to_a.sum {|item| item.total_price}
 end
 
   def self.previous_balance_for_user(user)
    where(user_id: user.id).order(:created_at).pluck(:acctbal).last || 0.0
  end
  
end
