class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :block_type
      t.integer :page_id

      t.timestamps null: false
    end
  end
end
