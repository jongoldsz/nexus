class AddLocationToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :location_id, :integer
    remove_column :projects, :catagory_id
    add_column :projects, :catagory_id, :integer
  end
end
