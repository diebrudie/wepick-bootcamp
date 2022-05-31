class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :type
      t.date :activity_date
      t.date :deadline_date
      t.boolean :anonymity, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
