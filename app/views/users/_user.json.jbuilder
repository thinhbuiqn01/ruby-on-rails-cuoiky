json.extract! user, :id, :name, :username, :email, :password, :roles, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
