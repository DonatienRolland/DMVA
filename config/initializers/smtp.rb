ActionMailer::Base.smtp_settings = {
  address: "smtp.online.net",
  port: 587,
  domain: 'https://polar-savannah-40397.herokuapp.com/',
  user_name: ENV['DMVA_EMAIL_ADDRESS'],
  password: ENV['DMVA_EMAIL_PASSWORD'],
  authentication: :plain,
  enable_starttls_auto: true
}

ActionMailer::Base.default_url_options = {
  host: "https://polar-savannah-40397.herokuapp.com/"
}
