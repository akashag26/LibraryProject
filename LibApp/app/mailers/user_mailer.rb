class UserMailer < ApplicationMailer
  default from: 'akashag26@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://gmail.com/login'
    mail(to: @user.email, subject: 'Room Booked')
  end
end
