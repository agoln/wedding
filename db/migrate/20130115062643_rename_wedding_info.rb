class RenameWeddingInfo < ActiveRecord::Migration
  def up
    rename_table :wedding_info, :wedding_infos
  end

  def down
    rename_table :wedding_infos, :wedding_info
  end
end
