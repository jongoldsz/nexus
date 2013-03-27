class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :quantity
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
