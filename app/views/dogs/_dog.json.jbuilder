json.extract! dog, :id, :name, :gender, :breed, :size, :age, :likes, :dislikes, :created_at, :updated_at
json.url dog_url(dog, format: :json)
