module SpreeAffiliate
  module AffiliateHelpers
    require 'active_support/time'
    # This method adds filters and helper methods on the send method.
    def self.included(receiver)
      receiver.send :helper_method, :current_affiliate
      receiver.send :before_filter, :set_current_affiliate
    end

    # This method returns the affiliate Id.
    # This method first looks in the order for an associated affiliate id.
    # If none found, the affiliate is looked up against the cookie store.
    # Otherwise the method returns nil.
    def current_affiliate
      @order.try(:affiliate_id) || cookies[:affiliate_id] || nil
    end

    # This method sets the affiliate Id in the cookie store,
    # with an expire time of 30 minutes
    def set_current_affiliate
      if cookies[:affiliate_id] == nil || cookies[:affiliate_id].empty?
        cookies[:affiliate_id] = {:value => params[:aid], :expires => 30.minutes.from_now}
      end
    end
  end
end
