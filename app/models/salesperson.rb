class Salesperson < ActiveRecord::Base

  # Associations
  has_many :tickets
  has_many :transactions

end
