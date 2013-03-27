class AddReferencesToComments < ActiveRecord::Migration
  def change
      add_column :comments, :user_id, :integer
      add_column :comments, :project_id, :integer
      add_column :comments, :objective_id, :integer
      add_column :comments, :task_id, :integer
  end
end
