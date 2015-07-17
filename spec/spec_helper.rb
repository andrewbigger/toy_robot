require 'rubygems'
require 'byebug'

Dir.glob(File.join('**', '*.rb')) do |klass|
  require_relative "../#{klass}"
end
