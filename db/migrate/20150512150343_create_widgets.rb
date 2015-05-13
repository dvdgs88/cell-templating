class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name
      t.hstore :options
      t.integer :block_id
      t.string :type

      t.timestamps null: false
    end
  end
end
