module SpreeAffiliate
  module AffiliateHelpers
    def self.included(receiver)
      receiver.send :helper_method, :current_affiliate
      receiver.send :before_filter, :set_current_affiliate
    end

    def current_affiliate
      @order.try(:affiliate_id) || session[:affiliate_id] || nil
    end

    def set_current_affiliate
      session[:affiliate_id] ||= params[:aid]
    end
  end
end
