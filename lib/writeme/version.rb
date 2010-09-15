module Writeme
  def self.version
    version_file = File.dirname(__FILE__) + '/../../VERSION'
    File.read(version_file) if File.exists?(version_file)
  end

  VERSION = version
end
