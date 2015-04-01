class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
     def institution?
       if category == 1
         true
       else
         false
       end
     end 
     
     def regularUser?
       if category == 2
         true
       else
         false
       end
     end 

     def franchiseOwner?
       if category == 3
         true
       else
         false
       end
     end 
     
     
         
end
