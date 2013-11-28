class ConvertTableToUtf8 < ActiveRecord::Migration
  def up
    execute('ALTER TABLE `spree_affiliates` CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;')
  end

  def down
    execute('ALTER TABLE `spree_affiliates` CONVERT TO CHARACTER SET latin1 COLLATE latin1_swedish_ci;')
  end
end
