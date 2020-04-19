json.extract! user_game, :id, :users_id, :games_id, :color, :created_at, :updated_at
json.url user_game_url(user_game, format: :json)
