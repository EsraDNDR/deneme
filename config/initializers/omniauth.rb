OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '139301336228321', '7a26f49b382fe5b3a9cc694dc314d8be', :client_options => { :ssl => { :ca_file => "#{Rails.root}/config/ca-bundle.crt" } } 
end