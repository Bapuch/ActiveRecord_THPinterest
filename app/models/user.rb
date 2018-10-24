# This class is linked to the users table
class User < ApplicationRecord
  # 1 user - N comments
  has_many :comments
  # 1 user - N pins
  has_many :pins
end
