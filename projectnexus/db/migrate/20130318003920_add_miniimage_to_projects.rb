class AddMiniimageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :miniimage, :string
  end
end
