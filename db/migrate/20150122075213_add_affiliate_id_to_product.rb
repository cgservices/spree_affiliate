class AddAffiliateIdToProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :affiliate_id, :integer
  end
end
