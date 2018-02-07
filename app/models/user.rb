class User < ApplicationRecord
  has_many :bottles
  has_secure_password
end
