class User < ApplicationRecord
  has_one :profile
  has_one :address
  has_one :salaryaccount
end
