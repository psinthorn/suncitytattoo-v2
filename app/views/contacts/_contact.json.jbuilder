json.extract! contact, :id, :title, :address, :city, :province, :country, :postcode, :tel, :mobile, :email, :website, :facebook, :instagram, :whatsapp, :line, :status, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
