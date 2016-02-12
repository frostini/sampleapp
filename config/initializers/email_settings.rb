ActionMailer::Base.smtp_settings = {
    user_name: 'SMTP_Injection',
    password: 'A7683b93d766bdeace1ee925d8546746390841bd0',
    address: 'smtp.sparkpostmail.com',
    port: 587,
    enable_starttls_auto: true,
    format: :html,
    from: 'marlon@affordablehousingapp.com',
    :openssl_verify_mode => 'none'
}