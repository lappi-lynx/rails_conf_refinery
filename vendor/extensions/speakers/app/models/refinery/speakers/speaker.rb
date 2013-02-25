module Refinery
  module Speakers
    class Speaker < Refinery::Core::BaseModel
      serialize :social_contacts, Array

      # enumerate :social_contacts, :with => Refinery::SocialContact

      self.table_name = 'refinery_speakers'

      attr_accessible :name, :country, :description, :social_contacts, :company, :photo_id, :position, :github

      attr_accessor :github

      translates :name, :country, :description

      class Translation
        attr_accessible :locale
      end

      acts_as_indexed :fields => [:name, :country, :description, :social_contacts, :company]

      validates :name, :presence => true, :uniqueness => true

      # validates :github, :presence => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
