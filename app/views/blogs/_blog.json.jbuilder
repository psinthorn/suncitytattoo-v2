json.extract! blog, :id, :title, :subtitle, :body, :status, :user_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
