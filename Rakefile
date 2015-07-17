#!/usr/bin/env rake

require 'rake'

Dir.glob('lib/tasks/*.rake').each { |r| import r }

task :default => [ :spec, :rubocop ]
