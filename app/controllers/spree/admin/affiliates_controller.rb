module Spree
  module Admin
    class AffiliatesController < Spree::Admin::ResourceController

      def index
        params[:q] ||= {}

        @search = Spree::Affiliate.accessible_by(current_ability, :index).ransack(params[:q])
        @affiliates = @search.result.
            page(params[:page]).
            per(params[:per_page] || Spree::Config[:orders_per_page])
      end

    end
  end
end
