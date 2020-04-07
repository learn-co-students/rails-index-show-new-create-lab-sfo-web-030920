class ChangeCode < ActiveRecord::Migration[5.0]
  def up
    rename_column :coupons, :coupon_codes, :coupon_code
  end
end
