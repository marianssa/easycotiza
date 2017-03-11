# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_mailer/notify
  def notify
  	if @client
    	Welcome.notify Client.new(nombre: 'Easycotiza', email: 'easycotiza@gmail.com') 
  end

end
