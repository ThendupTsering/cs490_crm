json.array!(@clients) do |client|
  json.extract! client, :id, :name, :score, :address, :entity_type, :email, :phone_no, :fax_no, :gender, :career, :birthday, :entry_point, :entry_date, :size, :contact_name, :industry
  json.url client_url(client, format: :json)
end
