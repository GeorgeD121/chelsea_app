class Member < ActiveRecord::Base
  
  validates :first_name, :last_name, :address_1, :city, :country, :email, presence: true
  validate  :email_regex
  
  def email_regex
    if email.present? and not email.match(/\A[^@]+@[^@]+\z/)
     errors.add :email, "This is not a valid email address"
   end
  end
end                    
                       
                        
                        
                        
                        
                      
                        