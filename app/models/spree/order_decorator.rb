module Spree
  Order.class_eval do

    belongs_to :affiliate

    # add an affiliate id to the order
    def save_affiliate(affiliate_id)
      self.affiliate_id = affiliate_id
      self.save!
    end
  end
end