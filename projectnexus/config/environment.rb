# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Projectnexus::Application.initialize!

ENV['SSL_CERT_FILE'] = '/opt/local/etc/certs/cacert.pem'