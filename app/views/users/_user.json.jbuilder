json.extract! user, :id, :avatar, :name, :email, :DOB, :gender, :country, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
