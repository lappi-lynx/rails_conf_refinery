module Refinery
  module Speakers
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Speakers

      engine_name :refinery_speakers

      initializer "register refinerycms_speakers plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "speakers"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.speakers_admin_speakers_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/speakers/speaker',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Speakers)
      end
    end
  end
end
