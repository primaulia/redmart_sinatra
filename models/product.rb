class Product < ActiveRecord::Base
  has_many :reviews
  has_and_belongs_to_many :categories
end
