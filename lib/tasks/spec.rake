require 'rspec/core/rake_task'

desc "Run application unit tests"
RSpec::Core::RakeTask.new(:spec)