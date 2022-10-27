require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:single) do |t|
  ENV['CONFIG_NAME'] ||= "single"
  t.pattern = Dir.glob('spec/_spec.rb')
end

task :default => :single
