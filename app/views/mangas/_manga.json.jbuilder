json.extract! manga, :id, :title, :category_id, :author_id, :description, :created_at, :updated_at
json.url manga_url(manga, format: :json)
