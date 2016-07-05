class Client < ActiveRecord::Base

  # Associations
  has_many :tickets
  has_many :returns
  has_many :transactions

end
