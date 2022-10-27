require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:single) do |t|
  ENV['CONFIG_NAME'] ||= "single"
  t.pattern = Dir.glob('spec/owner_page_spec.rb')
end

task :default => :single
