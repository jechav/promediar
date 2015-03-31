json.array!(@enrollments_scores) do |enrollments_score|
  json.extract! enrollments_score, :id, :id_enrollment, :id_score
  json.url enrollments_score_url(enrollments_score, format: :json)
end
