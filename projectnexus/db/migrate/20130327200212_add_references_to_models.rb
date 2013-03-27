class AddReferencesToModels < ActiveRecord::Migration
  def change
    add_column :tags, :project_id, :integer
    add_column :discussions, :project_id, :integer
    add_column :comments, :discussion_id, :integer
    add_column :comments, :resource_id, :integer
    add_column :projects, :stage_id, :integer
    add_column :blogentries, :project_id, :integer
    add_column :blogentries, :user_id, :integer
  end
end
