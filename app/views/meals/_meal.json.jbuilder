json.extract! meal, :id, :created_at, :updated_at, :name, :user_id, :vegetarian, :week, :proteins, :hydrates, :vegetables
json.url meal_url(meal, format: :json)
