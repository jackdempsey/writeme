require 'yaml'

module Writeme
  def self.output_filename
    'README' 
  end

  def self.defaults_filename
    "templates/.writeme.yml"
  end

  def self.defaults
    # setup keys in our data hash for pieces that the templates will assume are present
    defaults = %w(name description usage requirements requirement_steps contributing_steps creators legal).inject({}) {|hash, item| hash[item.to_sym] = nil; hash}
    if File.exists?(defaults_filename)
      # merge in any user defaults
      defaults.merge!(YAML.load_file(defaults_filename)[:defaults])
    end
  end
end
