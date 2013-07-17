class CreateGcmDevices < ActiveRecord::Migration # :nodoc:
  def self.up
    create_table :gcm_devices do |t|
      t.string :device_id, :size => 120
      t.string :registration_id, :size => 120, :null => false
      t.datetime :last_registered_at

      t.timestamps
    end

    add_index :gcm_devices, :device_id, :unique => true
    add_index :gcm_devices, :registration_id, :unique => true
  end

  def self.down
    drop_table :gcm_devices
  end
end
