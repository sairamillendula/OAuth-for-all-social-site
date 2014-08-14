require "omniauth-google-oauth2"
OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  
  provider :facebook,'',''
  provider :twitter,"",""
  provider :google_oauth2,'', ''
  
end

