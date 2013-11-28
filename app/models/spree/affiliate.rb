module Spree
  class Affiliate < ActiveRecord::Base
    attr_accessible :id, :name

    has_many :orders
  end
end
