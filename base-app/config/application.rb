require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Base
  class Application < Rails::Application
  
  # don't generate css and js for every layout
    config.generators.stylesheets = false
    config.generators.javascripts = false
    
  #contact form mailing   
    config.action_mailer.smtp_settings = {
      :address              => "smtp.yourEmail.com",
      :port                 => 587,
      :domain               => "yourEmail.com",
      :authentication       => 'plain',
      :user_name            => "yourName@yourEmail.com",
      :password             => "putYourEmailPasswordBetweenTheQuotes",
      :enable_starttls_auto => true,
      :openssl_verify_mode  => 'none'
    }
    
    config.action_mailer.default_url_options = {
      :host => "yourEmail.com"
    }  
  
  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Pacific Time (US & Canada)'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :en
    
  end
end
