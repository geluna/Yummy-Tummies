class Account < ActiveRecord::Base
   belongs_to :users
   validates :depotype, presence: true
  DEPOSIT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  validates :depotype, inclusion: DEPOSIT_TYPES
  
def final_acct_bal 
    orders.to_a.sum {|order| order.final_acct_price}
  end
end
