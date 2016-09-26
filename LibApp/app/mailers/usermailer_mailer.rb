class UsermailerMailer < ApplicationMailer
    default from: "akashag26@gmail.com"

    def sample_email(user)
      @user = user
      mail(to: @user.email, subject: 'Room Booked')
    end

end
