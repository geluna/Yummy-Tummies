class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  geocoded_by :address
  after_validation :geocode
 

  has_many :accounts 
  has_many :menus
  has_many :orders
  has_many :franchises
  has_many :students, dependent: :destroy
  has_many :schools, through: :students
  validates :email, :password, presence: true
accepts_nested_attributes_for :students, :allow_destroy => true

  


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

     def institution?
       if category == 1
         true
       else
         false
       end
     end 
  
  def franchiseOwner?
       if category == 2
         true
       else
         false
       end
     end  
       
     def regularUser?
       if category == 3
         true
       else
         false
       end
     end      
end
