class Detention < ActiveRecord::Base
  belongs_to :detention_date
  belongs_to :office_direct_referral
  belongs_to :assignor, class_name: "User", foreign_key: :assigned_by

  validates :detention_date_id, presence: true
  validates :office_direct_referral_id, presence: true
  validates :assigned_by, presence: true

  enum detention_type: [ :lunch ]

end
