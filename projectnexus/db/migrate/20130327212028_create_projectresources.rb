class CreateProjectresources < ActiveRecord::Migration
  def change
    create_table :projectresources do |t|
      t.integer :project_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
