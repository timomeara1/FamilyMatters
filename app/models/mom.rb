class Mom < ActiveRecord::Base
  
  has_many :photos
  
  has_secure_password

  validates :email, :password, :presence => true
  
  def self.search(search)
    if search
      find(:all, :conditions => ['neighborhood LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
