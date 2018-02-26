OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '214376102634400', '00e2b3bed43cfc897c01ece949d35127'
end
