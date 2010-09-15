Given /^I have a config file with:$/ do |data|
  Given %{a file named "#{Writeme.defaults_filename}" with:}, data
end
