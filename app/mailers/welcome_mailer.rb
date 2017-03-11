class WelcomeMailer < ApplicationMailer
  default :from => "easy.cotiza@gmail.com"
  def notify(client)
    @client = client
    mail to: client.email, subject: 'bienvenido!' 
  end 
  def notify(enterprise)
    @enterprise = enterprise
    mail to: enterprise.email, subject: 'bienvenido!' 
  end 
  def welcome_notify
  ::Devise.mailer.delay.welcome_instructions(self)
  end
end
