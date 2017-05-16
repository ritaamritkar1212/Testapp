json.extract! post, :id, :category, :question, :answer, :created_at, :updated_at
json.url post_url(post, format: :json)
