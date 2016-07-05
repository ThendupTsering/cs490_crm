class Transaction < ActiveRecord::Base

  # Associations
  belongs_to :client
  belongs_to :salesperson
  belongs_to :product
  
end
