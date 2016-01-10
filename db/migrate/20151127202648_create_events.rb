class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :start_at
      t.date :end_at
      t.boolean :all_day
      t.references :user, index: true, foreign_key: true
      t.boolean :is_private

      t.timestamps null: false
    end
  end
end
