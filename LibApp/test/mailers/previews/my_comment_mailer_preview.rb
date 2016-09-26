# Preview all emails at http://localhost:3000/rails/mailers/my_comment_mailer
class MyCommentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/my_comment_mailer/comment
  def comment
    @test = "hello"
    MyCommentMailer.comment(@test)
  end

end
