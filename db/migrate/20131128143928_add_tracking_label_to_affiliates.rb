class AddTrackingLabelToAffiliates < ActiveRecord::Migration
  def change
    add_column :spree_affiliates, :tracking_label, :string
  end
end
