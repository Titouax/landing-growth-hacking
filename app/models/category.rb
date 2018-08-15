class Category < ApplicationRecord
  has_many :leads
  has_many :subscribers 
end
