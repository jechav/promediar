json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :id_user, :id_subject, :count
  json.url enrollment_url(enrollment, format: :json)
end
