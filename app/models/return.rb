class Return < ActiveRecord::Base

  # Associations
  belongs_to :client
  belongs_to :product

end
