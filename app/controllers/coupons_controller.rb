class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
    end

    def create
        # @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        
        @coupon = Coupon.create(coupon_params)

        redirect_to coupon_path(@coupon)
    end

    def show
        @coupon = Coupon.find(params[:id])
    end
    
    private
    # need to do this in order to overcome the ForbiddenAttributesError (makes app more secure)
    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end
end