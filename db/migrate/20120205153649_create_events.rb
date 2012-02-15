class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.string :subtitle, :limit => 512
      t.text :venue
      t.datetime :start_date
      t.datetime :end_date
      t.integer :sub_event_id
      t.text :host_names
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
