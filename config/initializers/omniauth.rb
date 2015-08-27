OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '987284149300-2a5c80o1o9nnut033lt79s51ab3lo589.apps.googleusercontent.com', 'MPE1kwx7pt7QdtBYgNF8nomL', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
