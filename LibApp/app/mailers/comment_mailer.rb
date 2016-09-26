class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.lib.app9.subject
  #
  def lib.app9(email)
    @email = email

    mail to: @email , subject: "New room booked by your team mate"
  end
end
