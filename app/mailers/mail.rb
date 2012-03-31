class Mail &lt; ActionMailer::Base

  default :from => "admin@broadenandbuild.com"
  # send a signup email to the user, pass in the user object that contains the user's email address
  def registration_confirmation(user)
    mail( :to => user.email,
    :subject => "Thanks for signing up" )
  end
end
