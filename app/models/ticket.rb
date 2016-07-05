class Ticket < ActiveRecord::Base

  # Associations
  belongs_to :client
  belongs_to :salesperson

end
