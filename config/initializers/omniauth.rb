require "omniauth-google-oauth2"
OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  
  provider :facebook,'397153187093568','ce397bd5b09f4d270e6c820ab3e92064'
  provider :twitter,"39eLdKELNWkWGQUrey0JqkVNY","KA0loHEzdBT2Scl3uivhtTAT52Cnv6b1eD6gOTByxMzYQEQS1v"
  provider :google_oauth2,'1034785829290-9fopb8ng6kau1llm1a5a1sde4osuhelp.apps.googleusercontent.com', 'zYNSNYeCSKRk9ZRuDSpgr6Cc'
  
end

