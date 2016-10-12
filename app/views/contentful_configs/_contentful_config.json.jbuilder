json.extract! contentful_config, :id, :name, :space_id, :access_token, :created_at, :updated_at
json.url contentful_config_url(contentful_config, format: :json)