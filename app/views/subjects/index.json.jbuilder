json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :description, :credits, :id_program
  json.url subject_url(subject, format: :json)
end
