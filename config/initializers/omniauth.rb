OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'TAZWh3T8tx2yhZqEzrEPw', '3lbLfUyzxL20py8NJNpuQEcWk6Gtp95PBdodR8uQs', :client_options => { :ssl => { :ca_file => "#{Rails.root}/config/ca-bundle.crt" } } 
  provider :facebook, '139301336228321', '7a26f49b382fe5b3a9cc694dc314d8be', :client_options => { :ssl => { :ca_file => "#{Rails.root}/config/ca-bundle.crt" } } 
end