class CreateBlogentries < ActiveRecord::Migration
  def change
    create_table :blogentries do |t|
      t.string :title
      t.text :content
      t.boolean :highlighted

      t.timestamps
    end
  end
end
