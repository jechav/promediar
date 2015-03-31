json.array!(@scores) do |score|
  json.extract! score, :id, :value, :reference
  json.url score_url(score, format: :json)
end
