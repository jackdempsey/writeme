$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'writeme'

require "rubygems"
require "ruby-debug"
require "bundler/setup" #setup makes the :path to Aruba work
require 'aruba'
require 'test/unit/assertions'

World(Test::Unit::Assertions)

def file_exists(filename)
  check_file_presence([filename], true)
end

def no_file_exists(filename)
  check_file_presence([filename], false)
end
