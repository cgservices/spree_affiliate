module Spree
  class Affiliate < ActiveRecord::Base

    has_many :orders
  end
end
