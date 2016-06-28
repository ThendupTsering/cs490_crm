json.array!(@salespeople) do |salesperson|
  json.extract! salesperson, :id, :name, :team
  json.url salesperson_url(salesperson, format: :json)
end
