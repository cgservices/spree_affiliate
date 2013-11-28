class CreateSpreeAffiliates < ActiveRecord::Migration
  def change
    create_table :spree_affiliates do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
