module MfvStyleGuide
  class Railtie < Rails::Railtie
    rake_tasks do
      MfvStyleGuide.load_tasks
    end
  end
end
