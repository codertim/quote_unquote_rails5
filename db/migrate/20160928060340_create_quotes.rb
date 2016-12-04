class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string  :saying
      t.string  :source
      t.integer :user_id

      t.timestamps
    end
  end
end
