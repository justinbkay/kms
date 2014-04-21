class ReferralMailer < ActionMailer::Base
  default from: "from@example.com"

  def odr_submitted
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
