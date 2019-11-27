require 'mfv_style_guide/version'
require 'mfv_style_guide/railtie' if defined?(Rails)

module MfvStyleGuide
  def self.root_path
    File.dirname __dir__
  end

  def self.load_tasks
    tasks_dir = File.join File.dirname(__FILE__), 'tasks'
    Dir[File.join tasks_dir, '*.rake'].each { |t| load t }
  end
end
