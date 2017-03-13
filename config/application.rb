require_relative 'boot'

require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Proyecto
  class Application < Rails::Application
    
    config.action_mailer.default_url_options = { :host => 'localhost:3000' }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default :charset => "utf-8"

    config.active_job.queue_adapter = :delayed_job
    config.action_mailer.smtp_settings = {
    	:address 		   	 => "smtp.gmail.com",
    	:port				 => 587,
    	:authentication 	 => :plain,
    	:domain 			 => "gmail.com",
    	:user_name 			 => "easy.cotiza@gmail.com",
    	:password 			 => "easycotiza123",
    	:enable_starttls_auto => true
    }
  end
end
