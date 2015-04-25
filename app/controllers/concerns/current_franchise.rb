module CurrentFranchise
  extend ActiveSupport::Concern
  
 private
 
 def set_franchise
   @franchise = Franchise.find(session[:franchise_id])
 rescue ActiveRecord::RecordNotFound
   @franchise = Franchise.create
   session[:franchise_id] = @franchise.id
 end
end