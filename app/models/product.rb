class Product < ActiveRecord::Base

  has_many :returns
  has_many :transactions

end
