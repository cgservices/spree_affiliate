module Spree
  class Affiliate < ActiveRecord::Base
    attr_accessible :name, :tracking_code, :tracking_label

    has_many :orders
  end
end
