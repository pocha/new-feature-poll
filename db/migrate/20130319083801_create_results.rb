class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :poll_id
      t.integer :field_id
      t.string :user_data
      t.text :feedback

      t.timestamps
    end
  end
end
