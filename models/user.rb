class User < ActiveRecord::Base
  has_one :review
end
