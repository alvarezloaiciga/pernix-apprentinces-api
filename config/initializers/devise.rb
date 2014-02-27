# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  config.secret_key = 'bd1ffbde0e1d6894b063672149ca894ae5b2779ec48ad40d68f225ddf56ff682d79e447a3a27ee9b70bbb046ab22ad96d0a4ec21755d26303d7f0f842a40154d'
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'
  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]

  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.skip_session_storage = [:http_auth, :token_auth]
end
