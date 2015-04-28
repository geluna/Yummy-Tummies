class Account < ActiveRecord::Base
   belongs_to :users
   validates :depotype, :credit, presence: true
  DEPOSIT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  validates :depotype, inclusion: DEPOSIT_TYPES
  
  def self.previous_balance_for_user(user)
    where(user_id: user.id).order(:created_at).pluck(:acctbal).last || 0.0
  end
end
