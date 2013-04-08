Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '558234490875817', 'dcd2302121e8e7cc8d48a13b5fccaefa'
end