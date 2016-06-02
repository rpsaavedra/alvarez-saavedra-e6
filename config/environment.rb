# Load the Rails application.
require File.expand_path('../application', __FILE__)

ActionMailer::Base.smtp_settings = {
  :address               => 'smtp.gmail.com',
   :port                 => 587,
   :domain 				 => 'gmail.com',
   :user_name            => 'asproyectoweb@gmail.com',
   :password             => 'proyectoweb123',
   :authentication       => :plain,
  :enable_starttls_auto => true
}

# Initialize the Rails application.
Rails.application.initialize!
