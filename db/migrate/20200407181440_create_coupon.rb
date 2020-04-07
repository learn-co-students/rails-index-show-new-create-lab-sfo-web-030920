class CreateCoupon < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :coupon_codes
      t.string :store
    end
  end
end
