class Category < ActiveRecord::Base
  has_many :reviews #relationship for reviews
  has_and_belongs_to_many :products
end
