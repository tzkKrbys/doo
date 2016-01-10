json.array!(@empathies) do |empathy|
  json.extract! empathy, :id
  json.url empathy_url(empathy, format: :json)
end
