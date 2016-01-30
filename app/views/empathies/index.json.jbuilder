json.array!(@empathies) do |empathy|
  json.extract! empathy, :id, :interest_id, :user_id
  json.url empathy_url(empathy, format: :json)
end
