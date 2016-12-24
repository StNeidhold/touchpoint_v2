class CreateEventAttendees < ActiveRecord::Migration
  def change
    create_table :event_attendees do |t|
      t.integer :user_id
      t.integer :recruiting_event_id

      t.timestamps

    end
  end
end
