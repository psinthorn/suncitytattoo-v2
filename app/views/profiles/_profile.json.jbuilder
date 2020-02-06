json.extract! profile, :id, :suffix, :first_name, :last_name, :gender, :age, :body, :mobile, :email, :website, :facebook, :instagram, :line, :whatsapp, :roles, :nick_name, :status, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
