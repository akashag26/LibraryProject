class MyCommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.my_comment_mailer.comment.subject
  #
  def comment(comment)
    @email = current_user.email
    mail to: @email , subject: "New room booked by your team mate"
  end
end
