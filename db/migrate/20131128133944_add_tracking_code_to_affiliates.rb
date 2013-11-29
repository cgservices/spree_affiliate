class AddTrackingCodeToAffiliates < ActiveRecord::Migration
  def change
    add_column :spree_affiliates, :tracking_code, :string
  end
end
