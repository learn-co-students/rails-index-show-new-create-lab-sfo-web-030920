class Coupon < ApplicationRecord
    # makes sure that coupon_codes are unique
    validates :coupon_code, uniqueness: true
end
