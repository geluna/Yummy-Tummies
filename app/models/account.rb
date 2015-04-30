class Account < ActiveRecord::Base
   belongs_to :users
   belongs_to :order
   validates :depotype, presence: true
   DEPOSIT_TYPES = [ "Check", "Credit card", "Debit Card", "Purchase Order" ]
   validates :depotype, inclusion: DEPOSIT_TYPES
  
  def self.previous_balance_for_user(user)
    where(user_id: user.id).order(:created_at).pluck(:acctbal).last || 0.0
  end
  
  def self.current_user(user)
    where(user_id: user.id).pluck(:email)
  end
end
