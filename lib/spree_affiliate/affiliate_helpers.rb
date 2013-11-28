module SpreeAffiliate
  module AffiliateHelpers
    def self.included(receiver)
      receiver.send :helper_method, :current_affiliate
    end

    def current_affiliate
      @current_affiliate ||= params[:aid] unless params[:aid].blank?
    end
  end
end
