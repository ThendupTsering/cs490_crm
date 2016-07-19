class Client < ActiveRecord::Base

  # Associations
  has_many :tickets
  has_many :returns
  has_many :transactions

  ENTITY_TYPES = ["","Consumer","Business"]
  GENDER = ["","Male","Female"]
  CAREER = ["","Developer","Marketing","Writer","Singer","Actor","Defense Attorney","Consultant","Information Technology"]
  INDUSTRY = ["","Auto Manufacturer","Retail","Biotech","Education","Television Broadcast"]
  ENTRY_POINT = ["","Social Media","Direct Mail","Email","Writing Contest","Retail Brochure","Phone"]
end
