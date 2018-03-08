class UserMailer < ApplicationMailer
  default from: "charlesmanson@aol.com"

 def welcome_email(user)
   @user = user
   @url  = 'http://gooble.com/session/new'
   mail(to: user.username, subject: 'Welcome to 99 Cats!')
 end
end
