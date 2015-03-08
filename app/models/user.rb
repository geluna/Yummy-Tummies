class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, uniqueness: true
  after_destroy :ensure_an_admin_remains
  #PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]


  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end

end
