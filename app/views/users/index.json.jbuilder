json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :email, :state, :average, :id_program
  json.url user_url(user, format: :json)
end
