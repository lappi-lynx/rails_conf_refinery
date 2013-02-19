module Refinery
  module Speakers
    module Admin
      class SpeakersController < ::Refinery::AdminController

        crudify :'refinery/speakers/speaker',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
