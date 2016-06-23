json.array!(@customers) do |customer|
  json.extract! customer, :id, :email, :phone_no, :fax_no, :type
  json.url customer_url(customer, format: :json)
end
