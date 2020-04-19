json.extract! question, :id, :categories_id, :name, :right_answer, :created_at, :updated_at
json.url question_url(question, format: :json)
