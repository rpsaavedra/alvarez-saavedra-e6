require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "pass_reset" do
    mail = UserMailer.pass_reset
    assert_equal "Pass reset", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
