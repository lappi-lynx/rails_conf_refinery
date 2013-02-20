module Refinery
  module Speakers
    class Speaker < Refinery::Core::BaseModel
      self.table_name = 'refinery_speakers'

      attr_accessible :name, :country, :description, :social_contacts, :company, :photo_id, :position

      translates :name, :country, :description

      class Translation
        attr_accessible :locale
      end

      acts_as_indexed :fields => [:name, :country, :description, :social_contacts, :company]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
