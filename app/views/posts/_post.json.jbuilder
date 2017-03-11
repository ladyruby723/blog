json.extract! post, :id, :contributor_id, :title, :content, :created_at, :updated_at
json.url post_url(post, format: :json)