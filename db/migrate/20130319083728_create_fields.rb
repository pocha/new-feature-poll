class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.integer :poll_id
      t.string :content

      t.timestamps
    end
  end
end
