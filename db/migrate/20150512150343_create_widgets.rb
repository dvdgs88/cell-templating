class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name
      t.hstore :options
      t.integer :block_id
      t.string :type

      t.timestamps null: false
    end

    add_foreign_key :widgets, :blocks
    add_index :widgets, :options, using: :gin
  end
end
