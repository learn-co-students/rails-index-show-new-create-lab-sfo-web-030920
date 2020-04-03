class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
    end

    def create
        # @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        
        @coupon = Coupon.new(coupon_params)

        # if coupon_code is unique, @coupon will save and redirect, otherwise it will render the :new page so user can put in a new code
        if @coupon.save
            redirect_to coupon_path(@coupon)
        else
            render :new
        end

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