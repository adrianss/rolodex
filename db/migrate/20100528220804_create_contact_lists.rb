class CreateContactLists < ActiveRecord::Migration
  def self.up
    create_table :contact_lists do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_lists
  end
end
