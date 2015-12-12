class CreateFakeAttachments < ActiveRecord::Migration
  def self.up
    create_table :fake_attachments do |t|
      t.integer :attachable_id
      t.string :attachable_type
      t.string :file
      t.string :filename

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :fake_attachments
  end
end
