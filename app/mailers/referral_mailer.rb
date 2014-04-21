class ReferralMailer < ActionMailer::Base
  default from: "admin@kunaschools.org"

  def odr_submitted(odr)
    @odr = odr

    mail(to: odr.user.email,
         subject: "Thank You for your submission")
  end
end
