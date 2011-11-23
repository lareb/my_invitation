ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address            => 'smtp.gmail.com',
  :port               => 587,
  :tls                => true,
  :domain             => 'gmail.com', #you can also use google.com
  :authentication     => :plain,
  :user_name          => 'lareb.indore@gmail.com',
  :password           => 'sarfarosh'
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
