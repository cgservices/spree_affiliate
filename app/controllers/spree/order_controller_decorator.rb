Spree::OrdersController.class_eval do
  after_filter :add_affiliate_id, only: :populate

  def add_affiliate_id
    @order.try(:save_affiliate, current_affiliate) unless current_affiliate.blank?
  end
end