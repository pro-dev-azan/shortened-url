json.extract! url_shortener, :id, :url, :shortened_url, :clicked, :created_at, :updated_at
json.url url_shortener_url(url_shortener, format: :json)
