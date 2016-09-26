require 'test_helper'

class CommentMailerTest < ActionMailer::TestCase
  test "lib.app9" do
    mail = CommentMailer.lib.app9
    assert_equal "Lib.app9", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
