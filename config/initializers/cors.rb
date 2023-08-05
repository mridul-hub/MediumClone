# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000' # Replace with your frontend's origin (e.g., http://yourdomain.com)
    resource '/usercreate', headers: :any, methods: [:post]
    resource '/userlogin', headers: :any, methods: [:post]
    # Add more resources as needed, e.g., resource '/otherendpoint', ...
  end
end
