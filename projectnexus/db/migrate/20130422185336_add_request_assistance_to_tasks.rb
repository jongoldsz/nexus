class AddRequestAssistanceToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :request_assistance, :boolean
  end
end
