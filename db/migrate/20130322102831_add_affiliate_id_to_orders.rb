class AddAffiliateIdToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :affiliate_id, :integer
  end
end
