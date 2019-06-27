json.extract! diary, :id, :date, :title, :body, :created_at, :updated_at
json.url diary_url(diary, format: :json)
