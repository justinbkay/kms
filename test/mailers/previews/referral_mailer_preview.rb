# Preview all emails at http://localhost:3000/rails/mailers/referral_mailer
class ReferralMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/referral_mailer/odr_submitted
  def odr_submitted
    ReferralMailer.odr_submitted
  end

end
