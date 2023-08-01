Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://mellifluous-arithmetic-b968bd.netlify.app', 'https://mellifluous-arithmetic-b968bd.netlify.app/create', 'https://mellifluous-arithmetic-b968bd.netlify.app/create', 'https://peaceful-cliffs-79833-a8770ca52690.herokuapp.com/graphql'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end

Rails.application.config.action_controller.forgery_protection_origin_check = false
