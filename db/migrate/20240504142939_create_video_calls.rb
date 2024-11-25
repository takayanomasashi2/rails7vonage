class CreateVideoCalls < ActiveRecord::Migration[7.1]
  def change
    create_table :video_calls do |t|
      t.string :name
      t.string :session_id
      t.string :uuid
      t.string :application_id

      t.timestamps
    end
  end
end
