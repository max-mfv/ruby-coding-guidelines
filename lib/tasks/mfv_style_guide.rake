namespace :mfv_style_guide do
  # Example usage: bundle exec rake "mfv_style_guide:dirtycop[--branch]"
  desc 'Runs a modified rubocop that runs only on changed files'
  task :dirtycop, %i[option ref] do |_task, args|
    require 'mfv_style_guide'

    dirtycop_filepath = File.join(MfvStyleGuide.root_path, 'bin', 'dc')
    sh "#{dirtycop_filepath} #{args[:option]} #{args[:ref]}"
  end
end
