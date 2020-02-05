json.extract! welcome, :id, :title, :subtitle, :body, :subbody, :status, :user_id, :created_at, :updated_at
json.url welcome_url(welcome, format: :json)
