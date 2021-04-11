json.extract! entry, :id, :title, :url, :notes, :private, :created_at, :updated_at
json.url entry_url(entry, format: :json)
