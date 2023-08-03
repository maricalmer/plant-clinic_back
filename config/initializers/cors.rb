Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://mellifluous-arithmetic-b968bd.netlify.app', 'https://api.cloudinary.com'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put]
  end
end
