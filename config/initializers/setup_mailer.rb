ActionMailer::Base.smtp_settings = {
    :address 		   	 => "smtp.gmail.com",
    :port				 => 587,
    :authentication 	 => :plain,
    :domain 			 => "gmail.com",
    :user_name 			 => "easy.cotiza@gmail.com",
    :password 			 => "easycotiza123",
    :enable_starttls_auto => true
}
