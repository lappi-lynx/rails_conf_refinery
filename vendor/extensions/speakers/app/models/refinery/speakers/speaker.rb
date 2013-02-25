module Refinery
  module Speakers
    class Speaker < Refinery::Core::BaseModel
      serialize :social_contacts, Array

      self.table_name = 'refinery_speakers'

      attr_accessible :name, :country, :description, :social_contacts, :company, :photo_id, :position

      translates :name, :country, :description

      class Translation
        attr_accessible :locale
      end

      acts_as_indexed :fields => [:name, :country, :description, :social_contacts, :company]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      class << self
        def contacts_for_select
          ['github', 'twitter', 'facebook', 'google_plus']
        end
      end
    end
  end
end
