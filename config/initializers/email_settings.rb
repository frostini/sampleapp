ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
    user_name: 'SMTP_Injection',
    password: 'A7683b93d766bdeace1ee925d8546746390841bd0',
    address: 'smtp.sparkpostmail.com',
    port: 587,
    enable_starttls_auto: true,
    format: :html,
    from: 'marlon@affordablehousingapp.com'
    # :authentication => :plain,
    # :openssl_verify_mode => 'none'
}
ActionMailer::Base.default_url_options[:host] = "affordablehousingapp.com"