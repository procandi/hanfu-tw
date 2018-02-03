json.extract! vote, :id, :email, :flag, :created_at, :updated_at
json.url vote_url(vote, format: :json)
