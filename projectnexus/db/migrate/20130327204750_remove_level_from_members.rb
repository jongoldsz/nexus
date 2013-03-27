class RemoveLevelFromMembers < ActiveRecord::Migration
  def up
      remove_column :memberships, :level
  end

  def down
      add_column :memberships, :level, :integer
  end
end
