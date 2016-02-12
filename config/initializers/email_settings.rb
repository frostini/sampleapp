
#     :authentication => :plain,
#     :openssl_verify_mode => 'none'
# config.action_mailer.delivery_method = :smtp
# config.action_mailer.perform_deliveries = true

# config.action_mailer.default_url_options[:host] = "affordablehousingapp.com"



ActionMailer::Base.smtp_settings = {
    user_name: 'SMTP_Injection',
    password: ENV['SPARKPOST_API_KEY'],
    address: ENV['SPARKPOST_SMTP_HOST'],
    port: ENV['SPARKPOST_SMTP_PORT'],
    enable_starttls_auto: true,
    format: :html,
    from: 'mailer@yourawesomeapp.com'
}
# ActionMailer::Base.default_url_options[:host] = "affordablehousingapp.com"

