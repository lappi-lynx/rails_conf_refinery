module Refinery
  module Speakers
    class Speaker < Refinery::Core::BaseModel
      # before_save :social_contacts_hash

      serialize :social_contacts

      # enumerate :social_contacts, :with => Refinery::SocialContact

      self.table_name = 'refinery_speakers'

      attr_accessible :name, :country, :description, :social_contacts, :company, :photo_id, :position, :github, :twitter, :facebook, :google_plus

      attr_accessor :github, :twitter, :facebook, :google_plus

      translates :name, :country, :description

      class Translation
        attr_accessible :locale
      end

      acts_as_indexed :fields => [:name, :country, :description, :social_contacts, :company]

      validates :name, :presence => true, :uniqueness => true

      validates :github, :presence => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      # def social_contacts_hash
      #   social_contacts = {"github" => self.github.split, "twitter" => self.twitter.split, "facebook" => self.facebook.split, "google_plus" => self.google_plus.split }
      # end
    end
  end
end
