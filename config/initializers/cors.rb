# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  # allow do
  #   origins "*"

  #   resource "*",
  #     headers: :any,
  #     methods: [:get, :post, :put, :patch, :delete, :options, :head]
  # end

  allow do
    origins '*'
    resource '*',
    headers: ["Authorization"],
    expose: ["Authorization"],
    methods: [:get, :post, :put, :patch, :delete, :options, :head],
    max_age: 86400 # Access-Control-Max-Age is 1 day in seconds
  end
end
