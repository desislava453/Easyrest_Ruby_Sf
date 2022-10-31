require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:all) do |t|
  ENV['CONFIG_NAME'] ||= "all"
  t.pattern = Dir.glob('_spec.rb')
end

task :default => :all
