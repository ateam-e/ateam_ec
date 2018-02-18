json.extract! finalorder, :id, :username, :phonenumber, :address, :email, :delivery, :payment, :gift, :created_at, :updated_at
json.url finalorder_url(finalorder, format: :json)
