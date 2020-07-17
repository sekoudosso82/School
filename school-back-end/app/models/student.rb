class Student < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :password, length: { in: 3..20 }

  belongs_to :classe
  belongs_to :parent
end
