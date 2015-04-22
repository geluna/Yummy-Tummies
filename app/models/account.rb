class Account < ActiveRecord::Base
   belongs_to :users
   validates :deposit, presence: true
  
def final_acct_bal 
    orders.to_a.sum {|order| order.final_acct_price}
  end
end
