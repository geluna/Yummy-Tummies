class Account < ActiveRecord::Base
  
  
def final_acct_bal 
    orders.to_a.sum {|order| order.final_acct_price}
  end
end
