json.extract! user, :id, :full_name, :email, :password, :gender, :country, :date_of_birth, :phone, :profession, :created_at, :updated_at
json.url user_url(user, format: :json)
