# Encoding: utf-8
require 'refinerycms-core'
require 'acts_as_indexed'
require 'friendly_id'

module Refinery
  class SocialContact < ActiveEnum::Base
    value :name => 'github'
    value :name => 'twitter'
    value :name => 'google_plus'
    value :name => 'facebook'

    class << self
      def values_for_select
        ['github', 'twitter', 'facebook', 'google_plus']
      end
    end
  end
end
