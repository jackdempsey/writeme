$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'writeme'

require 'test/unit/assertions'

World(Test::Unit::Assertions)
