class Account < ActiveRecord::Base
   belongs_to :users
   validates :depotype, presence: true
  DEPOSIT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  validates :depotype, inclusion: DEPOSIT_TYPES
  
def final_acct_bal 
    accounts.to_a.sum {|account| account.final_acct_price}
  end
end
