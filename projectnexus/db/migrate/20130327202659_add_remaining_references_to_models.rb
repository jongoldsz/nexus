class AddRemainingReferencesToModels < ActiveRecord::Migration
  def change
      add_column :tasks, :task_id, :integer
      add_column :tasks, :user_id, :integer
      add_column :tasks, :objective_id, :integer
      add_column :objectives, :project_id, :integer
      add_column :resources, :project_id, :integer
      add_column :resources, :user_id, :integer
      add_column :documents, :project_id, :integer
      add_column :documents, :objective_id, :integer
      add_column :documents, :comment_id, :integer
      add_column :documents, :user_id, :integer
      add_column :documents, :task_id, :integer
      add_column :documents, :resource_id, :integer
      add_column :documents, :blogentry_id, :integer
  end
end
