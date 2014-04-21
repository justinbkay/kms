require 'test_helper'

class ReferralMailerTest < ActionMailer::TestCase
  test "odr_submitted" do
    mail = ReferralMailer.odr_submitted
    assert_equal "Odr submitted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
