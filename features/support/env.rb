$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'writeme'

require "rubygems"
require "ruby-debug"
require "bundler/setup" #setup makes the :path to Aruba work
require 'aruba'
require 'test/unit/assertions'

World(Test::Unit::Assertions)
