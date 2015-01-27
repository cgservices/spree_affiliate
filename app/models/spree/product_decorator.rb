Spree::Product.class_eval do
  belongs_to :affiliate
  attr_accessible :affiliate_id
end