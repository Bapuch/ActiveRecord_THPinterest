# This class is linked to the pins table
class Pin < ApplicationRecord
    # 1 user - N pins
    belongs_to :user
    # 1 pin - N comments
    has_many :comments
end
