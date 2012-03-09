class Mom < ActiveRecord::Base
  

  
  has_secure_password

  validates :email, :password, :presence => true
  
  mount_uploader :image, ImageUploader
  
  def self.search(search)
    if search
      find(:all, :conditions => ['neighborhood LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
