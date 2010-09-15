require 'yaml'

module Writeme
  def self.output_filename
    'README' 
  end

  def self.defaults_filename
    '.writeme.yml'
  end

  def self.defaults
    if File.exists?(defaults_filename)
      YAML.load_file(defaults_filename)[:defaults] 
    else
      {} # if no default, return a hash so we can merge project data into it nicely later downstream
    end
  end
end
