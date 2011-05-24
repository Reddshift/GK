require 'site_hooks.rb'

module SpreeSite
  class Engine < Rails::Engine
    def self.activate
      # Add your custom site logic here
      Gateway::Elavon.register
    end
    
    def load_tasks
    end
    
    config.to_prepare &method(:activate).to_proc
  end
end
