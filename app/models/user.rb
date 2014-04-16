class User < ActiveRecord::Base
  has_secure_password

  has_many :minor_direct_referrals
  has_many :office_direct_referrals

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def is_admin?
    true
  end

end
