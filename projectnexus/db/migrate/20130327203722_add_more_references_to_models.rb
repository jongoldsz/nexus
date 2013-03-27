class AddMoreReferencesToModels < ActiveRecord::Migration
  def change
      add_column :memberships, :level_id, :integer
      add_column :levels, :project_id, :integer
      add_column :memberships, :project_id, :integer	
      add_column :memberships, :user_id, :integer
  end
end
