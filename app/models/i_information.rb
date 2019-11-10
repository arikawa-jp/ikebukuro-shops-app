class IInformation < ApplicationRecord
 
  def self.search(search) 
    if search
      IInformation.where('name LIKE ?', "%#{search}%")
    else
      []
    end
  end
end


