class CreateSpeakersSpeakers < ActiveRecord::Migration

  def up
    create_table :refinery_speakers do |t|
      t.string :name
      t.string :country
      t.text :description
      t.text :social_contacts
      t.string :company
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-speakers"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/speakers/speakers"})
    end

    drop_table :refinery_speakers

  end

end
