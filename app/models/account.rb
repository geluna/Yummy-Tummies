class Account < ActiveRecord::Base
<<<<<<< HEAD
   belongs_to :users
   validates :depotype, :credit, presence: true
=======
   belongs_to :user
   validates :depotype, presence: true
>>>>>>> 75d872680e1f3b5aa6a2ed2640b07643e4e0c6d0
  DEPOSIT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  validates :depotype, inclusion: DEPOSIT_TYPES
  
def self.previous_balance_for_user(user)
    where(user_id: user.id).order(:created_at).pluck(:acctbal).first || 0.0
  end
end
