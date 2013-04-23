class RenameCategoryFieldInProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :catagory_id
    add_column :projects, :category_id, :integer
  end

  def down
  end
end
