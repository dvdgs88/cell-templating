class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :block_type, index: true
      t.integer :page_id

      t.timestamps null: false
    end

    add_foreign_key :blocks, :pages
  end
end
