Spree::OrdersController.class_eval do
  after_filter :add_affiliate_id, only: :populate

  def add_affiliate_id
    current_order.try(:save_affiliate, current_affiliate) unless current_affiliate.blank?
    session[:affiliate_id] = nil
  end
end