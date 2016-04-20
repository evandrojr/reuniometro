class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.integer :participants
      t.datetime :finish
      t.timestamps null: false
    end
  end
end
