json.extract! review, :id, :user_id, :manga_id, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
