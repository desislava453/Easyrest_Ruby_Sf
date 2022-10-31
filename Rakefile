require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:all) do |t|
  ENV['CONFIG_NAME'] ||= "all"
  t.pattern = Dir.glob('_spec.rb')
end

task :default => :all

RSpec::Core::RakeTask.new(:single) do |t|
  ENV['CONFIG_NAME'] ||= "single"
  t.pattern = Dir.glob('spec/owner_page_spec.rb')
end

task :test => :single


