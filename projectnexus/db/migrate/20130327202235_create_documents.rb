class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :type
      t.integer :downloads

      t.timestamps
    end
  end
end
