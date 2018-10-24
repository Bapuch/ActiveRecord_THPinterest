# This class is linked to the comments table
class Comment < ApplicationRecord
  # 1 user - N comments
  belongs_to :user
  # 1 pin - N comments
  belongs_to :pin
end
