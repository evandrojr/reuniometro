class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.integer :participants
      t.time :estimated_end_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end
