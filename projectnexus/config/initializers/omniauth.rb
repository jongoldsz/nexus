Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '452505471496522', '05abb6c2699b1487bd6feb3b30349011', :client_options => {:ssl => {:verify => false}}
  #'558234490875817', 'dcd2302121e8e7cc8d48a13b5fccaefa'
end