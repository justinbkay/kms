class User < ActiveRecord::Base
  has_secure_password

  has_many :minor_direct_referrals
  has_many :office_direct_referrals

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  enum role: [ :staff, :administrator, :superuser ]

  scope :active, -> { where(active: true).order(:last_name, :first_name) }

  def is_admin?
    administrator?
  end

  def name
    [first_name, last_name].join(' ')
  end

end
