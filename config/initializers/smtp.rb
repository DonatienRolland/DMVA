ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'rollandmail.com',
  user_name: ENV['DMVA_EMAIL_ADDRESS'],
  password: ENV['DMVA_EMAIL_PASSWORD'],
  authentication: :plain,
  enable_starttls_auto: true
}

ActionMailer::Base.default_url_options = {
  host: "rollandmail.com"
}
